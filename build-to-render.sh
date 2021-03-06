#!/bin/bash

echo "Install Dart Sass Embedded..."

# This should be in the PATH.
BIN_DIR=/opt/render/project/src/.venv/bin
# @bep original was:
# BIN_DIR=/opt/build/repo/node_modules/.bin
DARTSASS_VERSION=1.53.0

echo "Path is $PATH"

echo "pwd output is:"
pwd

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

# Path is /opt/render/project/src/.venv/bin:
# /opt/render/project/python/Python-3.7.10/bin:
# /opt/render/project/nodes/node-17.6.0/bin:
# /opt/render/project/src/node_modules/.bin:
# /opt/render/project/.gems/bin:
# /opt/render/project/src/.venv/bin:
# /usr/local/bin/dart-sass:
# /opt/render/project/go/bin:
# /go/bin:/usr/local/go/bin:
# /usr/local/cargo/bin:
# /opt/render/project/.cargo/bin:
# /usr/local/sbin:
# /usr/local/bin:
# /usr/sbin:
# /usr/bin:
# /sbin:/bin 

# pwd output is: /opt/render/project/src