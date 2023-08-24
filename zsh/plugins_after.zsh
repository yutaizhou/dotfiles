eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.dotfiles/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
function zvm_after_init() {
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
}

source ~/.dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
