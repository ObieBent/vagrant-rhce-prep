# Avoid deletion of screen 
export LESS="-X"
export PAGER=/usr/bin/less
export EDITOR=vi

alias ls='/bin/ls -CF'
alias rm='rm -i'
alias more='less'

# Define graphic term title bar
case $TERM in
  xterm*|rxvt)
    TITLEBAR='\[\e]0;\h:\w\a\]';
    ;;
  *)
    TITLEBAR="";
    ;;
esac

# Bash prompt configuration for root
if [ $UID -eq 0 ]; then
  _PC=30
# Bash prompt configuration for user
else
  _PC=31


export PS1=$TITLEBAR'\[\e['$_PT';'$_PC'm\]\u@\h:\w\[\e[$(($??7:0));37m\]\$\[\e[0;0m\] '

umask 022

export LS_OPTIONS='--color=auto'
eval `dircolors`
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Do not clear screen when less finishes, keeps the man on screen
export LESS='FiX'

# Nodes 
alias controller='ssh vagrant@controller'
alias node1='ssh vagrant@node1'
alias node2='ssh vagrant@node2'
alias node3='ssh vagrant@node3'
alias node4='ssh vagrant@node4'
alias node5='ssh vagrant@node5'
