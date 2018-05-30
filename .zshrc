
#   ^^/ /^^^ |   | |^^^\  /^^^
#    /   ^^\ |^^^| |___/ |
# # /__ ___/ |   | |   \  \___

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/buybread/.zshrc'

autoload -Uz compinit
compinit

export PS1='crossdressing in %~ '
alias ins="sudo apt-get install"
alias del="sudo apt-get remove"
alias upd="sudo apt-get update"
alias upg="sudo apt-get upgrade"
alias fix="sudo apt --fix-broken install"
alias deb="sudo dpkg -i"
alias re="reboot"
alias die="shutdown now"

# pywal + feh
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
