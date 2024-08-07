# Functions
source $HOME/.shell/functions.sh

# Allow local customizations in the $HOME/.shell_local_before file
if [ -f $HOME/.shell_local_before ]; then
    source $HOME/.shell_local_before
fi

# Allow local customizations in the $HOME/.zshrc_local_before file
if [ -f $HOME/.zshrc_local_before ]; then
    source $HOME/.zshrc_local_before
fi

# External plugins (initialized before)
source $HOME/.zsh/plugins_before.zsh

# Settings
source $HOME/.zsh/settings.zsh

# Bootstrap
source $HOME/.shell/bootstrap.sh

# External settings
source $HOME/.shell/external.sh

# Aliases
source $HOME/.shell/aliases.sh
alias reload="source $HOME/.zshrc"

# External plugins (initialized after)
source $HOME/.zsh/plugins_after.zsh

# Allow local customizations in the $HOME/.shell_local_after file
if [ -f $HOME/.shell_local_after ]; then
    source $HOME/.shell_local_after
fi

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi
# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/opt/homebrew/opt/micromamba/bin/micromamba';
export MAMBA_ROOT_PREFIX='/Users/yutai/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yutai/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yutai/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/yutai/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yutai/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/yutai/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/Users/yutai/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<
