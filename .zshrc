bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# aliases
alias upd='sudo apt-get update'
alias inst='sudo apt-get install'
alias del='sudo apt-get remove'
alias rstrt='reboot'
alias lock='bash ~/scripts/lock.sh'
alias sys='bash ~/scripts/sys.sh'
alias neo='neofetch'
alias clock='tty-clock -B'
alias matrix='cmatrix -x'
alias mclol='java -jar ~/Downloads/Minecraft.jar'

# ps1
export PS1='<buybread> @ [%~] '
