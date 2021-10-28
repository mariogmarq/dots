# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias q="exit"
alias v="nvim"
alias mhdd="sudo mount -t ntfs-3g /dev/sda1 /home/mariogmarq/HDD"
alias ls="exa"
alias cat="bat"

. "$HOME/.cargo/env"

PATH=$PATH:/home/mariogmarq/.local/bin


# functions
qrcode() {
  local input="$*"
  [ -z "$input" ] && local input="@/dev/stdin"
  curl -d "$input" https://qrcode.show
}
