# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias grep='grep --color'

randpasswd(){
    tr -cd '[:alnum:]' < /dev/urandom | fold -w$1 | head -n1;
}

HISTFILESIZE=100000
export HISTFILESIZE
HISTSIZE=100000
export HISTSIZE
export HISTTIMEFORMAT="[%F %T] "

export PS1="\[\033[38;5;27m\][\[$(tput bold)\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;39m\]@\[$(tput sgr0)\]\[\033[38;5;81m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;27m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;27m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;45m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
