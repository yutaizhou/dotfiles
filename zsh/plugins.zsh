if is_command_verbose fzf; then
    source <(fzf --zsh)
fi

if is_command_verbose starship; then
    eval "$(starship init zsh)"
fi

if is_command_verbose zoxide; then
    eval "$(zoxide init zsh)"
fi

if is_command_verbose thefuck; then
    eval $(thefuck --alias fk)
fi

if [ -f "$(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh" ]; then
    source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
    zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
fi

if is_command_verbose uv; then
    eval "$(uv generate-shell-completion zsh)"
fi

if is_command_verbose uvx; then
    eval "$(uvx --generate-shell-completion zsh)"
fi

