#!/bin/bash

export GIT_PR_RELEASE_TOKEN=${GITHUB_TOKEN}

set -x

git clone https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/${GITHUB_REPO} repo

cd repo
result=$(git-pr-release 2>&1)
ret=$?

echo $result
[[ "$result" = "No pull requests to be released" ]] && exit 0

exit $ret

