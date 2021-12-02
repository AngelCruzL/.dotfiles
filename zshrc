# Set variables

# Syntax highlight for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change the zsh options

# Create aliases

#alias ls='ls -AlFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'

# Customize Promp(s)

PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Add locations to $PATH variable
# Add Homebrew
export PATH=/opt/homebrew/bin:$PATH
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Write handy functions

function mkcd() {
 mkdir -p "$@" && cd "$_";
}


# Use ZSH pluggins
