
export PATH=$HOME/depot_tools:"$PATH"

export GYP_GENERATORS=ninja
export GYP_DEFINES="use_goma=1"
export GOMA_OAUTH2_CONFIG_FILE=$HOME/.goma_oauth2_config
export GOMA_DIR=${HOME}/goma

export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Git autocompletion
. ~/.git-completion.bash

# Fancy prompt
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\e[35m\]\w$(__git_ps1 " (%s)")\$\[\e[0m\] '


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# negative values for no limit
HISTSIZE=-1
HISTFILESIZE=-1
