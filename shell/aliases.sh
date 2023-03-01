# Shortcuts for dotbot install
idf() {
    (echo "Installing Dotfiles (main)")
    (cd ~/.dotfiles && git pull --ff-only && ./install)
}

idfl() {
    (echo "Installing Dotfiles (local)")
    (cd ~/.dotfiles_local && git pull --ff-only && ./install)
}

idfa() {
    (idf; idfl)
}

# check if the command exists, good for replacement tools like exa and z
is_command() {
	command -v "$1" &> /dev/null
}

if is_command zoxide
then 
    alias cd='z'
fi 

if is_command bat
then 
    alias cat='bat'
fi

if is_command exa
then
    alias ls='exa --color=auto --group-directories-first'
    alias ll='exa -la --group-directories-first' # long + showhidden 
    alias lt='exa --tree --level=2 --group-directories-first'
    alias lt3='exa --tree --level=3 --group-directories-first'
else
    alias ls='ls --color=auto --group-directories-first'
    alias ll='ls -la --group-directories-first'
fi



alias cdgr='cd "$(git root)"'
alias c="clear"

alias t="tmux"
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
