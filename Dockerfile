FROM ruby:2.6.3-alpine3.9

ENV GIT_PR_RELEASE_VERSION 0.8.0

RUN apk add --no-cache \
    git=2.20.1-r0 \
    bash=4.4.19-r1 \
  && gem install git-pr-release -v ${GIT_PR_RELEASE_VERSION} \
  && sed -i -e "/require 'colorize'/a String.disable_colorization = true" /usr/local/bundle/gems/git-pr-release-${GIT_PR_RELEASE_VERSION}/bin/git-pr-release \
  && addgroup -g 61000 docker \
  && adduser -s /bin/false -G docker -D -H -u 61000 docker \
  && mkdir /app \
  && chown docker:docker /app

COPY --chown docker:docker ./entrypoint.sh /app/

USER docker
WORKDIR /app

CMD ["/bin/bash", "/app/entrypoint.sh"]

