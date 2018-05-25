HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/buybread/.zshrc'

autoload -Uz compinit
compinit

export PS1='yum <%~> '
alias ins="sudo apt-get install"
alias del="sudo apt-get remove"
alias upd="sudo apt-get update"
alias upg="sudo apt-get upgrade"
alias re="reboot"
alias die="shutdown now"
