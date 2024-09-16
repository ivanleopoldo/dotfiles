# Simple Aliases

# Overriding default cmd
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias lst="eza --tree --level=2 --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias cat="bat"
alias e="exit"
alias c="clear"

# zsh
alias szsh="source ~/.zshrc"
alias zshrc="nvim ~/.zshrc"

# Nvim
alias nvim="nvim ."
alias vi="nvim ."

# Python
alias python="python3"
alias py="python3"
alias pip="pip3"

# Tmux
alias tl="tmux ls"
alias tn="tmux new -s "
alias tks="tmux kill-server"
alias tk="tmux kill-sess -t "
alias ta="tmux a -t "
alias tsc="tmux source ~/.config/tmux/tmux.conf"
