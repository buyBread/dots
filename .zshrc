
#                      /$$                          
#                     | $$                          
#  /$$$$$$$$  /$$$$$$$| $$$$$$$   /$$$$$$   /$$$$$$$
# |____ /$$/ /$$_____/| $$__  $$ /$$__  $$ /$$_____/
#    /$$$$/ |  $$$$$$ | $$  \ $$| $$  \__/| $$      
#   /$$__/   \____  $$| $$  | $$| $$      | $$      
#  /$$$$$$$$ /$$$$$$$/| $$  | $$| $$      |  $$$$$$$
# |________/|_______/ |__/  |__/|__/       \_______/

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/buybread/.zshrc'
export PATH="${PATH}:${HOME}/.local/bin/"
autoload -Uz compinit
compinit
export PS1='%{%F{cyan}%}%~ --→%{%f%} '

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx /usr/bin/i3
fi

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
