#!/usr/bin/env bash
# This code was generated by the devconainer-contrib cli 
# For more information: https://github.com/devcontainers-contrib/cli 

set -e

ensure_node () {
    if command -v node &> /dev/null; then
        echo "node is already installed"
    else
        echo "installing node"
        # install node using curl
        curl -sL https://deb.nodesource.com/setup_14.x | bash -
        apt-get install -y nodejs
    fi
}

ensure_npm () {
if command -v npm &> /dev/null; then
  echo "npm is already installed"
else
 echo "installing npm"
  # install npm using curl
  curl -L https://www.npmjs.com/install.sh | sh
fi
}

ensure_node
ensure_npm

npm install netlify-cli -g
