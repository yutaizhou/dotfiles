source <(fzf --zsh)
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval $(thefuck --alias fk)

source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
