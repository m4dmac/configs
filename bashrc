# .bashrc

# m4d

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias grep='grep --color'

randpasswd(){
    tr -cd '[:alnum:]' < /dev/urandom | fold -w$1 | head -n1;
}

#HISTFILESIZE=100000
#export HISTFILESIZE
#HISTSIZE=100000
#export HISTSIZE
#export HISTTIMEFORMAT="[%F %T] "

export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


export PS1="\[\033[38;5;27m\][\[$(tput bold)\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;39m\]@\[$(tput sgr0)\]\[\033[38;5;81m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;27m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;27m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;45m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
