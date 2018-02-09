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
alias wacom="sudo modprobe wacom"

# ps1
export PS1='<buybread> @ [%~] '

# wal stuff

# wal-tile
wal-tile() {
    wal -n -i "$@"
    feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"
}

# wal-center
wal-center() {
    wal -n -i "$@"
    feh --bg-center "$(< "${HOME}/.cache/wal/wal")"
}

# wal-scale
wal-scale() {
    wal -n -i "$@"
    feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
}

# wal-fit
wal-fit() {
    wal -n -i "$@"
    feh --bg-fit "$(< "${HOME}/.cache/wal/wal")"
}


# colorschemes
alias commit='wal-center ~/wall.jpg'
alias l-lewd='wal-scale ~/l-lewd!!.jpg'
alias pinky='wal-scale ~/pinky.png'
alias creepp='wal-scale ~/spook.png'

