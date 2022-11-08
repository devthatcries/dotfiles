if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_env_variables ]; then
	. ~/.bash_env_variables
fi

# Set default editor to vim
export EDITOR=vim

# include path
export PATH=/usr/include:"$PATH"
# sbin path
export PATH=/usr/sbin:"$PATH"
# Path for user scripts
export PATH=~/bin:"$PATH"
# Path for Android SDK
export PATH=/usr/lib/android-sdk/cmdline-tools/bin:"$PATH"
export PATH=/usr/lib/android-sdk/tools:"$PATH"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
export PS1='\[\033[1;35m\]<\u@\h \[\033[1;34m\]\w\[\033[1;35m\]>\[\033[0;31m\] \$'
# Run git prompt script to have git branch on cli prompt
source ~/.gitstatus/gitstatus.prompt.sh
PS1+='\n\[\033[1;36m\]>\[\033[0m\] '
export PS2='\[\033[0;36m\]> '

# Rust
source "$HOME/.cargo/env"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
