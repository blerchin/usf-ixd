FROM ubuntu:16.04

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  curl \
  unzip \
  nodejs \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY package.json package.json

RUN npm install

RUN curl -L --strip-components=1 https://api.github.com/repos/usf-ixd/usf-ixd-tests/tarball | tar -xzC test
