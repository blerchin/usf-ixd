#!/usr/bin/env bash

set -e

if [ -z "$GITHUB_USERNAME" ] && [ -z "$GITHUB_ACCESS_TOKEN" ]
then
  echo "Github credentials not present. Skipping autograder."
else
  curl -L -u "$GITHUB_USERNAME:$GITHUB_ACCESS_TOKEN" https://api.github.com/repos/usf-ixd/usf-ixd-tests/tarball/master | tar -xzC test
fi

export NODE_PATH=.
mocha --opts test/mocha.opts test/**/*spec.coffee
