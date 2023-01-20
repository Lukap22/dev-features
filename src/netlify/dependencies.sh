#!/usr/bin/env bash
# This code was generated by the devconainer-contrib cli 
# For more information: https://github.com/devcontainers-contrib/cli 

set -e

ensure_npm () {
if command -v npm &> /dev/null; then
  echo "npm is already installed"
else
 echo "installing npm"
  # install npm using curl
  curl -L https://www.npmjs.com/install.sh | sh
fi
}

ensure_npm

npm install netlify-cli -g
