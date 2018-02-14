bindkey -e


HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000


alias upd='sudo pacman -Syu'
alias ins='sudo pacman -S'
alias del='sudo pacman -R'
alias delall='sudo pacman -Rs'
alias rstrt='reboot'
alias lock='bash ~/scripts/lock.sh'
alias sys='bash ~/scripts/sys.sh'
alias mclol='java -jar ~/Downloads/Minecraft.jar'
alias srch="yaourt"
alias srchins='yaourt -S'
alias inf='neofetch'
alias i3wm="cd ~/.config/i3/"
alias nano="micro"
alias vim="micro"
alias music="ncmpcpp"
alias files="ranger" 
alias wacom="sudo modprobe wacom"
alias tree="bash ~/scripts/tree.sh"
alias vbox="sudo modprobe vboxdrv"


export PS1='<buybread> @ [%~] '


wal-tile() {
    wal -n -i "$@"
    feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"
}


wal-center() {
    wal -n -i "$@"
    feh --bg-center "$(< "${HOME}/.cache/wal/wal")"
}


wal-scale() {
    wal -n -i "$@"
    feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
}


wal-fill() {
    wal -n -i "$@"
    feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
}
