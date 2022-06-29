#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) are already installed"
else
  echo "Installing Node with fnm"
  fnm install --lts
fi
