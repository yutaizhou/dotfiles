
# Use colors in coreutils utilities output
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
fi

alias g="git"
alias t="tmux"
alias tl="tldr"

alias grep='grep --color'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ca="conda activate"
alias cel="conda env list"
alias cl="conda list"
# Aliases to protect against overwriting

alias cp='cp -i'
alias mv='mv -i'

