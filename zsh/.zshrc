export ZSH="$HOME/.oh-my-zsh"

#Add Zsh plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    fzf-tab
)
fpath+={ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source ~/.zsh_profile

# Keybindings
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^l' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

#FZF-menu config
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' matcher-list "${(s.:.)LS_COLOR}"
zstyle ':completion:*' menu unload
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

#Load completions
autoload -U compinitl && compinit

bindkey -s '^f' "tmux-sessionizer \n"

#Initialiase fzf, starship
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"

#Source aliases
source $ZSH/oh-my-zsh.sh
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

