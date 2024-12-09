export TERM="xterm-256color"
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Keybindings
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^l' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' matcher-list "${(s.:.)LS_COLOR}"
zstyle ':completion:*' menu unload
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

#Load completions
autoload -U compinit && compinit


alias ls="eza --long --color=always --icons=always --no-user"

# Shell integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#ALIASES

# git aliases
alias gt="git"
alias ga="git add ."
alias gs="git status -s"
alias gc='git commit -m'
alias glog='git log --oneline --graph --all'

# TMUX  and scripts
PATH="$PATH":"$HOME/.local/scripts/:$HOME/.local/bin"
bindkey -r '^f'
bindkey -s '^f' "tmux-sessionizer"

#Customizable prompt

# Starship
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"



# set Starship PATH
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
