#!/usr/bin/env bash

LEMMY_VERSION=$(
  curl -s "https://api.github.com/repos/LemmyNet/Lemmy/releases/latest" |
    grep -Po '"tag_name": "\K[0-9.]+'
)
LEMMY_RELEASE_URL="https://github.com/LemmyNet/lemmy/releases/tag/$LEMMY_VERSION"

sed -i "/Lemmy version:/c\Lemmy version: [$LEMMY_VERSION]($LEMMY_RELEASE_URL)" ../README.Rmd &&
  Rscript -e 'rmarkdown::render("../README.Rmd")'

rm -rf lemmy-js-client &&
  git clone https://github.com/LemmyNet/lemmy-js-client --single-branch -b $LEMMY_VERSION

cp parse.ts lemmy-js-client &&
  cd lemmy-js-client &&
  yarn add ts-morph &&
  npx ts-node parse.ts &&
  cd ..

rm ../R/http-methods.R &&
  Rscript ./generate.R
