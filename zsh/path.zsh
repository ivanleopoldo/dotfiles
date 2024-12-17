
# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# XDG_CONFIG_PATH
export XDG_CONFIG_HOME="$HOME/.config"

# FVM
export PATH="$PATH:/Users/ivanleopoldo/fvm/default/bin"

# Ruby
export PATH="$PATH:/Users/ivanleopoldo/.gem/ruby/2.6.0/bin"

# Rust
export PATH="$PATH:$HOME/.rvm/bin"
. "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# bun completions
[ -s "/Users/ivanleopoldo/.bun/_bun" ] && source "/Users/ivanleopoldo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$PATH:/Users/ivanleopoldo/.kenv/bin"
