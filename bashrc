# Functions
source $HOME/.shell/functions.sh

# Allow local customizations in the $HOME/.shell_local_before file
if [ -f $HOME/.shell_local_before ]; then
    source $HOME/.shell_local_before
fi

# Allow local customizations in the $HOME/.bashrc_local_before file
if [ -f $HOME/.bashrc_local_before ]; then
    source $HOME/.bashrc_local_before
fi

# Settings
source $HOME/.bash/settings.bash

# Bootstrap
source $HOME/.shell/bootstrap.sh

# External settings
source $HOME/.shell/external.sh

# Aliases
source $HOME/.shell/aliases.sh
alias reload="source $HOME/.bashrc"

# Plugins
source $HOME/.bash/plugins.bash

# Allow local customizations in the $HOME/.shell_local_after file
if [ -f $HOME/.shell_local_after ]; then
    source $HOME/.shell_local_after
fi

# Allow local customizations in the $HOME/.bashrc_local_after file
if [ -f $HOME/.bashrc_local_after ]; then
    source $HOME/.bashrc_local_after
fi

