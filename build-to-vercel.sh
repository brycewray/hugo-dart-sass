#!/bin/bash

echo "Install Dart Sass Embedded..."

echo "Getting Vercel's PATH..."
echo "First pwd"
pwd
echo "Then pwd -P"
pwd -P
echo "Then pwd -L"
pwd -L

# This is in Vercel's PATH.
BIN_DIR=/vercel/path0/opt/build/repo/node_modules/.bin
DARTSASS_VERSION=1.49.9

mkdir -p $BIN_DIR

curl -LJO https://github.com/sass/dart-sass-embedded/releases/download/${DARTSASS_VERSION}/sass_embedded-${DARTSASS_VERSION}-linux-x64.tar.gz;

tar -xvf sass_embedded-${DARTSASS_VERSION}-linux-x64.tar.gz;

mv sass_embedded/dart-sass-embedded $BIN_DIR

rm -rf sass_embedded*;

echo "List Bin Dir..."

ls $BIN_DIR;

dart-sass-embedded --version

echo "Building..."

hugo