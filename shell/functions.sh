is_command() {
	command -v "$1" &> /dev/null
}

is_command_verbose() {
	if command -v "$1" &> /dev/null; then
		return 0
	else
		echo "'$1' is not installed"
		return 1
	fi
}

path_remove() {
    PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "\$0 != \"$1\"" | sed 's/:$//')
}

path_append() {
    path_remove "$1"
    PATH="${PATH:+"$PATH:"}$1"
}

path_prepend() {
    path_remove "$1"
    PATH="$1${PATH:+":$PATH"}"
}

here() {
    local loc
    if [ "$#" -eq 1 ]; then
        loc=$(realpath "$1")
    else
        loc=$(realpath ".")
    fi
    ln -sfn "${loc}" "$HOME/.shell.here"
    echo "here -> $(readlink $HOME/.shell.here)"
}

there="$HOME/.shell.here"

ruffit() {
    ruff check --select I --fix
    ruff format
}

mcd() {
    mkdir "${1}" && cd "${1}"
}


up()
{
    local cdir="$(pwd)"
    if [[ "${1}" == "" ]]; then
        cdir="$(dirname "${cdir}")"
    elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
        echo "Error: argument must be a number"
    elif ! [[ "${1}" -gt "0" ]]; then
        echo "Error: argument must be positive"
    else
        for ((i=0; i<${1}; i++)); do
            local ncdir="$(dirname "${cdir}")"
            if [[ "${cdir}" == "${ncdir}" ]]; then
                break
            else
                cdir="${ncdir}"
            fi
        done
    fi
    cd "${cdir}"
}

# Shortcuts for dotbot install
idf() {
    (echo "Installing Dotfiles (main)")
    (cd $HOME/.dotfiles && ./install)
}

idfl() {
    (echo "Installing Dotfiles (local)")
    (cd $HOME/.dotfiles_local && ./install)
}

idfa() {
    (idf; idfl)
}


# * Aliases
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
# to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -pv'


# alias reload="exec ${SHELL} -l"
alias path='echo -e ${PATH//:/\\n}'s
alias count='find . -type f | wc -l'

# Git aliases
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gbv="git branch -vva"
alias gd="git diff"
alias gr="git remote"
alias grv="git remote -v"
alias gs="git status -sb"
alias gsw="git switch"
alias grs="git restore"
alias gl="git log --all --decorate --graph --oneline"
