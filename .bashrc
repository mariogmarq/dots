# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias q="exit"
alias v="nvim"
alias mhdd="sudo mount -t ntfs-3g /dev/sda1 /home/mariogmarq/HDD"
. "$HOME/.cargo/env"
