# path
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH:/Users/milk/.bun/bin:/Library/TeX/texbin:$PATH
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

# edit command
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

bindkey ' ' magic-space

# better mv
autoload zmv

# copy command
copy-command(){
	echo -n $BUFFER | pbcopy
}
zle -N copy-command
bindkey '^Xc' copy-command

# command hotkey
bindkey -s '^Xgc' 'git commit -m ""\C-b'

# git
alias gc="git commit -m"
alias push="git push"
alias pull="git pull"

alias ghsc="gh repo create -s=."
alias -g PU="--public"

# native replacements
alias ls="eza --color=always -a --long --git --no-filesize --icons=always --no-time --group-directories-first --no-user --no-permissions"
alias lst="eza --tree --level=2 -a --color=always --long --git --no-filesize --icons=always --group-directories-first --no-time --no-user --no-permissions"
alias cat="bat"
alias cd="z"
alias e="exit"
alias c="clear"

# zsh
alias szsh="source ~/.zshrc"
alias zshrc="nvim ~/.zshrc"

# Python
alias python="python3"
alias py="python3"
alias pip="pip3"
