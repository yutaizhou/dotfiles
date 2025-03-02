eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init bash)"
eval "$(thefuck --alias)"

# zoxide
if is_command zoxide
then 
    alias cd='z'
fi 

# bat
if is_command bat
then 
    alias cat='bat'
fi

# eza
if is_command eza
then
    alias ls='eza --color=auto --group-directories-first'
    alias ll='eza -la --group-directories-first' # long + showhidden 
    alias lt='eza --tree --level=2 --group-directories-first'
    alias lt3='eza --tree --level=3 --group-directories-first'
else
    alias ls='ls --color=auto --group-directories-first'
    alias ll='ls -la --group-directories-first'
fi

# nnn
if is_command nnn
then
    alias nn='nnn'
fi

[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
