# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Set variables
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change the zsh options

# Create aliases

## Utilities
# alias ls='ls -AlFh'
# alias ls='exa -laFh --git'
alias ls='lsd -laFh'
alias exa='exa -laFh --git'
alias man='batman'
alias cat='bat'
alias brewlist='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias sail='./vendor/bin/sail'

## Directories
alias ..='cd ..'
alias ...='cd ../..'
alias dev='cd ~/Development'
alias work='cd ~/Work'
alias dotfiles='cd ~/.dotfiles'

# Customize Promp(s)

PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Add locations to $PATH variable
# Add Homebrew
export PATH=/opt/homebrew/bin:$PATH
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# FNM variables
eval "$(fnm env --use-on-cd)"

# Write handy functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH pluggins
eval "$(starship init zsh)"

#export PATH=/home/$USER/.fnm:$PATH
#eval "$(fnm env --use-on-cd --version-file-strategy=recursive)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
