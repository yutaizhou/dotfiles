[ -d $HOME/bin ] && path_prepend "$HOME/bin"
[ -d $HOME/.local/bin ] && path_prepend "$HOME/.local/bin"
[ -d $HOME/.dotfiles/bin ] && path_prepend "$HOME/.dotfiles/bin"
[ -d /home/linuxbrew/.linuxbrew/bin ] && path_prepend /home/linuxbrew/.linuxbrew/bin
