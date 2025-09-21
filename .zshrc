export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

update() {
  brew update && brew upgrade && brew autoremove && brew cleanup

  brew bundle dump --global --force --file=$HOME/.Brewfile

  if [[ $1 == "-a" || $1 == "--all" ]]; then
    sudo softwareupdate -ia
}

export PATH="/usr/local/sbin:$PATH"

# Aliases
alias brewup='brew update && brew upgrade && brew autoremove && brew cleanup'

eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
