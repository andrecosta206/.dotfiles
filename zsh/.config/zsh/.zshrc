export PATH="$HOME/.local/scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# +---------+
# | Plugins |
# +---------+

#zsh-completions
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)
#Source zsh-syntax-highlighting
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Vim Motions
bindkey -v
export KEYTIMEOUT=1

# source /usr/share/fzf/key-bindings.zsh

# Rebind ALT-c to CTRL-e
bindkey -rM emacs '\ec'
bindkey -rM vicmd '\ec'
bindkey -rM viins '\ec'

zle     -N              fzf-cd-widget
bindkey -M emacs '\C-e' fzf-cd-widget
bindkey -M vicmd '\C-e' fzf-cd-widget
bindkey -M viins '\C-e' fzf-cd-widget

# +---------------------+
# | zsh-autosuggestions |
# +---------------------+

bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^l' vi-forward-word
bindkey '^k' history-search-backward
bindkey '^j' history-search-forward
# bindkey '^k' up-line-or-search
# bindkey '^j' down-line-or-search

bindkey -s '^f' "tmux-sessionizer \n"

#FZF-menu config
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' matcher-list "${(s.:.)LS_COLOR}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

#Load completions
autoload -U compinit && compinit
source $ZDOTDIR/plugins/fzf-tab/fzf-tab.zsh
_comp_options+=(globdots) # With hidden files
source <(fzf --zsh)

#Initialiase fzf, starship
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"

fastfetch

# +---------+
# | HISTORY |
# +---------+

setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# +---------+
# | ALIASES |
# +---------+

if [ -f $ZDOTDIR/.zsh_aliases ]; then
    source $ZDOTDIR/.zsh_aliases
fi

# Needs to be sourced after zle -N/ compinit
source $ZDOTDIR/plugins/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
