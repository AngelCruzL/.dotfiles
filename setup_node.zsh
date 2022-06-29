#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) are already installed"
else
  echo "Installing Node with fnm"
  fnm install --lts
fi

# * Install Global NPM Packages

echo "\n<<< Installing Global NPM Packages >>>\n"
npm install --global npkill
npm install --global typescript
npm install --global json-server
npm install --global http-server
npm install --global @angular/cli

echo "Global NPM Packages Installed"
npm list --global --depth=0