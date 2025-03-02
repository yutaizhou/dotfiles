[ -d $HOME/bin ] && path_prepend "$HOME/bin"
[ -d $HOME/.local/bin ] && path_prepend "$HOME/.local/bin"
[ -d $HOME/.dotfiles/bin ] && path_prepend "$HOME/.dotfiles/bin"
[ -d $HOME/homebrew/bin/ ] && path_prepend "$HOME/homebrew/bin/"
[ -d /home/linuxbrew/.linuxbrew/bin ] && path_prepend /home/linuxbrew/.linuxbrew/bin
[ -d /opt/homebrew/bin ] && path_prepend /opt/homebrew/bin
[ -d /opt/homebrew/sbin ] && path_prepend /opt/homebrew/sbin
