bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# aliases
alias upd='sudo pacman -Syu'
alias inst='sudo pacman -S'
alias del='sudo pacman -Rs'
alias rstrt='reboot'
alias lock='bash ~/scripts/lock.sh'
alias sys='bash ~/scripts/sys.sh'
alias mclol='java -jar ~/Downloads/Minecraft.jar'
alias srch="yaourt"
alias fetchh='neofetch'
alias ob="cd ~/.config/openbox/"
alias nano="micro"
alias vim="micro"
alias music="ncmpcpp"
alias files="ranger" 

# ps1
export PS1='<buybread> @ [%~] '
