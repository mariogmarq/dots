alias v="nvim"
alias q="exit"
alias ls="exa"
alias cat="batcat"

set fish_greeting ""
set PATH $HOME/.cargo/bin $HOME/.local/bin $PATH

starship init fish | source
