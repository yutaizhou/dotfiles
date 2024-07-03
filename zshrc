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

# Allow local customizations in the $HOME/.zshrc_local_after file
if [ -f $HOME/.zshrc_local_after ]; then
    source $HOME/.zshrc_local_after
fi
