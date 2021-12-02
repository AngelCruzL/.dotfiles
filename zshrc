export PATH=/opt/homebrew/bin:$PATH

# Set variables

# Change the zsh options

# Create aliases

alias ls='ls -AlFh'


# Customize Promp(s)

PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Add locations to $PATH variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Write handy functions

function mkcd() {
 mkdir -p "$@" && cd "$_";
}


# Use ZSH pluggins
