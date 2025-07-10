# .bashrc
#
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
PATH="$HOME/repos/dot/bin:$HOME/.local/bin:$HOME/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
set -o vi
alias woman=man
alias neofetch=fastfetch
alias reload='exec $SHELL -l'
alias gotodot="cd $HOME/repos/dot"
echo "Hello World! The current date is $(date)"
export EDITOR=vim

# User specific environment and startup programs
