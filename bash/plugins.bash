
# mac stuff >> 
# export BASH_SILENCE_DEPRECATION_WARNING=1
# eval "$(/opt/homebrew/bin/brew shellenv)"
# export TERM=screen-256color-bce
# <<


eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init bash)"
eval "$(thefuck --alias fk)"

[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
