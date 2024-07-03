eval "$(starship init bash)"
eval "$(fzf --bash)"


# zoxide
eval "$(zoxide init bash)"
if is_command zoxide
then 
    alias cd='z'
fi 

# bat
if is_command bat
then 
    alias cat='bat'
fi

# exa
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

[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
