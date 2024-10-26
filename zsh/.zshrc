# Initialize Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(zoxide init --cmd cd zsh)"



# ZSH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
ZSH_CUSTOM=~/.config/zsh/
ZSH_TMUX_AUTOSTART=true

plugins=(git gh zoxide tmux)

source $ZSH/oh-my-zsh.sh

# bun completions
[ -s "/Users/ivanleopoldo/.bun/_bun" ] && source "/Users/ivanleopoldo/.bun/_bun"

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :1000 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head =200'"

_fzf_comprun() {
  local command=$1
  shift
  
  case "$command" in 
    cd) fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo\$' {}" "$@" ;;
    ssh) fzf --preview 'dig {}' "$@" ;;
    *) fzf --preview "bat -n --color=always --line-range :1000 {}'" "$@" ;;
  esac
}
