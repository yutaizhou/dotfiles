eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
eval $(thefuck --alias fk)

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
