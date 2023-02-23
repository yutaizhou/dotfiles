eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.dotfiles/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# must be at end of zshrc. allowed before conda init block?
source ~/.dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
