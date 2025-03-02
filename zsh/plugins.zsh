eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
eval $(thefuck --alias)


[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

source $HOME/.dotfiles/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
function zvm_after_init() {
  [ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
}

source $HOME/.dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
