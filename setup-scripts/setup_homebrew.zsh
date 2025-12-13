#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

if command -v brew >/dev/null 2>&1; then
  echo "Homebrew is already installed"
else
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Add Homebrew to PATH for this session (Apple Silicon vs Intel)
  if [ -d /opt/homebrew/bin ]; then
    export PATH="/opt/homebrew/bin:$PATH"
  elif [ -d /usr/local/bin ]; then
    export PATH="/usr/local/bin:$PATH"
  fi
fi

# verify brew is available, then run bundle
if command -v brew >/dev/null 2>&1; then
  brew bundle --verbose
else
  echo "brew not found after install. Please open a new terminal or source your shell profile and re-run the script."
fi
