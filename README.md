>## Install ZSH
>
>```
>sudo apt install zsh
>chsh -s $(which zsh)
>```

>## Install git
>```
>sudo apt install git
>```

>## Install Tmux
>
>```
>git clone https://github.com/tmux/tmux.git
>cd tmux
>sh autogen.sh
>./configure
>make && sudo make install
>```

>## Install FZF
>
>```
>git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
>~/.fzf/install
>```

>## Install stow and create symlinks
>
>```
>  sudo apt install stow
>  stow .
>```

