#!/usr/bin/env bash

LEMMY_VERSION=$(
  curl -s "https://api.github.com/repos/LemmyNet/Lemmy/releases/latest" |
    grep -Po '"tag_name": "\K[0-9.]+'
)

git clone https://github.com/LemmyNet/lemmy-js-client --single-branch -b $LEMMY_VERSION

cp parse.ts lemmy-js-client

cd lemmy-js-client

yarn add ts-morph

npx ts-node parse.ts

# TODO: generate R code from JSON
# parse resp type recursively
