# path
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin
export ZSH="$HOME/.oh-my-zsh"

# default editor
export EDITOR=nvim
export VISUAL=$EDITOR

# settings
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
ZSH_CUSTOM=$ZSH/custom/
ZSH_TMUX_AUTOSTART=true

plugins=(git gh zoxide zsh-nvm)

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

set -o vi

# better mv
autoload zmv

alias mv="zmv"

# native replacements
alias ls="eza --color=always -a --long --git --no-filesize --icons=always --no-time --group-directories-first --no-user --no-permissions"
alias lst="eza --tree --level=2 -a --color=always --long --git --no-filesize --icons=always --group-directories-first --no-time --no-user --no-permissions"
alias cat="bat"
alias cd="z"

# Python
alias python="python3"
alias py="python3"
alias pip="pip3"
