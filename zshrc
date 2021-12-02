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

# Write handy functions

function mkcd() {
 mkdir -p "$@" && cd "$_";
}


# Use ZSH pluggins
