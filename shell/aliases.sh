# Shortcuts for dotbot install
idf() {
    (echo "Installing Dotfiles (main)")
    (cd $HOME/.dotfiles && git pull --ff-only && ./install)
}

idfl() {
    (echo "Installing Dotfiles (local)")
    (cd $HOME/.dotfiles_local && git pull --ff-only && ./install)
}

idfa() {
    (idf; idfl)
}

# check if the command exists, good for replacement tools like exa and z
is_command() {
	command -v "$1" &> /dev/null
}





alias cdgr='cd "$(git root)"'
alias c="clear"

alias t="tmux"
alias ta="tmux attach"
alias tl="tldr"

alias grep='grep --color'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ca="conda activate"
alias cel="conda env list"
alias cl="conda list"

alias ma="mamba activate"
alias mel="mamba env list"
alias ml="mamba list"
# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'


# alias reload="exec ${SHELL} -l"
alias path='echo -e ${PATH//:/\\n}'s
alias count='find . -type f | wc -l'

# Git aliases
alias g="git"
alias ga="git add"
alias gs="git status -sb"
alias gb="git branch"
alias gr="git remote"
