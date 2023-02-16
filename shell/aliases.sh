
# Use colors in coreutils utilities output
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
fi
alias ls='exa --color=auto'
alias ll='exa -lah'

alias cd='z'
alias cdgr='cd "$(git root)"'

alias cat='bat'

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


alias reload="exec ${SHELL} -l"
alias path='echo -e ${PATH//:/\\n}'s

# Git aliases
alias g="git"
alias ga="git add"
alias gs="git status"
alias gb="git branch"
alias gr="git remote"
