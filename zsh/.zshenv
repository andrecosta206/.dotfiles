#!/usr/bin/env zsh

###############################
# EXPORT ENVIRONMENT VARIABLE #
###############################

#export TERM='rxvt-256color'
export DOTFILES="$HOME/.dotfiles"
export WORKSPACE="$HOME/workspace"

# [ -f "$DOTFILES/install_config" ] && source "$DOTFILES/install_config"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# other software
# export TMUXP_CONFIGDIR="$XDG_CONFIG_HOME/tmuxp"
# export COMPOSER_HOME="$XDG_CONFIG_HOME/composer"
# export I3_CONFIG="$XDG_CONFIG_HOME/i3"
# export VIMCONFIG="$XDG_CONFIG_HOME/nvim"
# export GIMP_VERSION="2.10"
export STARTSHIP_CONFIG="$XDG_CONFIG_HOME/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export SCREENSHOT="$HOME/Documents/images/screenshots"

# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

FZF_COLORS="\
bg:#1E1E2E,\
bg+:#313244,\
fg:#CDD6F4,\
fg+:#CDD6F4,\
border:#6C7086,\
spinner:#F5E0DC,\
hl:#F38BA8,\
hl+:#F38BA8,\
header:#F38BA8,\
info:#CBA6F7,\
pointer:#F5E0DC,\
marker:#B4BEFE,\
prompt:#CBA6F7,\
label:#CDD6F4,\
selected-bg:#45475A"

export FZF_DEFAULT_OPTS="--height 60% \
--border sharp \
--layout reverse \
--color '$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"

export FZF_TMUX_OPTS="-p"

# X11
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# # Racket
# export PLTUSERHOME="$XDG_DATA_HOME/racket"

# NPM
export NPM_PATH="$XDG_CONFIG_HOME/node_modules"
export NPM_BIN="$XDG_CONFIG_HOME/node_modules/bin"
# export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/node_modules"

# git
export GIT_REVIEW_BASE=master # See gitconfig

# nvm
export NVM_DIR="$XDG_CONFIG_HOME/.nvm"
export NVM_DEFAULT="v20.11.1"
export PATH="$HOME/.nvm/versions/node/$NVM_DEFAULT/bin:$PATH"

export PATH="$HOME/.local/scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"
