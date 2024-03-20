# ZSH
export ZSH="$HOME/.oh-my-zsh"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# FVM
export PATH="$PATH:/Users/ivanleopoldo/fvm/default/bin"

# Ruby
export PATH="$PATH:/Users/ivanleopoldo/.gem/ruby/2.6.0/bin"

# Rust
export PATH="$PATH:$HOME/.rvm/bin"
. "$HOME/.cargo/env"
