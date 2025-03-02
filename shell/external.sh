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
    n ()
{
    # Block nesting of nnn in subshells
    [ "${NNNLVL:-0}" -eq 0 ] || {
        echo "nnn is already running"
        return
    }

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #      NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The command builtin allows one to alias nnn to n, if desired, without
    # making an infinitely recursive alias
    command nnn "$@"

    [ ! -f "$NNN_TMPFILE" ] || {
        . "$NNN_TMPFILE"
        rm -f -- "$NNN_TMPFILE" > /dev/null
    }
}
fi
