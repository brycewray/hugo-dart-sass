#!/bin/bash

echo "Install Dart Sass Embedded..."

DARTSASS_VERSION=1.49.9

# trying method from https://vercel.com/docs/concepts/deployments/build-step
amazon-linux-extras install dart-sass-embedded

dart-sass-embedded --version

echo "Building..."

hugo