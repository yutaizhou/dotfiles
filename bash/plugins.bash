if is_command_verbose starship; then
    eval "$(starship init bash)"
fi

if is_command_verbose zoxide; then
    eval "$(zoxide init bash)"
fi

if is_command_verbose thefuck; then
    eval "$(thefuck --alias fk)"
fi

if is_command_verbose uv; then
    eval "$(uv generate-shell-completion bash)"
fi

if is_command_verbose uvx; then
    eval "$(uvx --generate-shell-completion bash)"
fi

if is_command_verbose fzf; then
    eval "$(fzf --bash)"
fi

[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
