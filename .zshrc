HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e
zstyle :compinstall filename '/home/buybread/.zshrc'
export PATH="${PATH}:${HOME}/.local/bin/"
autoload -Uz compinit add-zsh-hook

function xterm_title_precmd () {
	print -Pn '\e]2;%1~\a'
}
function xterm_title_preexec () {
	print -Pn '\e]2;%1~ %# '
	print -n "${(q)1}\a"
}

if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

compinit
export PS1='%{%F{red}%}%~ %{%F{blue}%}» %{%f'

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx /usr/bin/openbox-session
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
