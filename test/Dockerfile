FROM debian:jessie

RUN apt-get -qq update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y curl apt-utils

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get -qq update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  nodejs \
  build-essential \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY package.json package.json

RUN npm install

COPY src src
COPY test test

CMD ["npm", "test"]
