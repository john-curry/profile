set -o vi
bind '"jj":"\e["'
export VIMRC="/home/bigboss/.vimrc"
alias clear='printf "\ec"'
alias info='info --vi-keys'
alias ls='ls --color=auto -l -h'
function ev() { vim $VIMRC; }
function eb() { vim /home/bigboss/.bashrc; }
export EDITOR=vim
