# Functions
source ~/.shell/functions.sh

# Allow local customizations in the ~/.shell_local_before file
if [ -f ~/.shell_local_before ]; then
    source ~/.shell_local_before
fi

# Allow local customizations in the ~/.bashrc_local_before file
if [ -f ~/.bashrc_local_before ]; then
    source ~/.bashrc_local_before
fi

# Settings
source ~/.bash/settings.bash

# Bootstrap
source ~/.shell/bootstrap.sh

# External settings
source ~/.shell/external.sh

# Aliases
source ~/.shell/aliases.sh
alias reload="source ~/.zshrc"

# Plugins
# source ~/.bash/plugins.bash

# Allow local customizations in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi

# Allow local customizations in the ~/.bashrc_local_after file
if [ -f ~/.bashrc_local_after ]; then
    source ~/.bashrc_local_after
fi

# all of these need to be conditional
eval $(ssh-agent -s) #&& ssh-add ~/.ssh/id_rsa_personal
eval "$(zoxide init bash)"
eval "$(starship init bash)"

export http_proxy=http://llproxy.llan.ll.mit.edu:8080
export https_proxy=http://llproxy.llan.ll.mit.edu:8080
. "$HOME/.cargo/env"
