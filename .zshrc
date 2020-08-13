export PATH="${PATH}:${HOME}/.local/bin/"
export PS1='%{%F{cyan}%}%d %{%F{red}%}» %{%f'
export EDITOR="/usr/bin/micro"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

zstyle :compinstall filename '/home/buybread/.zshrc'

function xterm_title_precmd () {
	print -Pn '\e]2;%1~\a'
}
function xterm_title_preexec () {
	print -Pn '\e]2;%1~ %# '
	print -n "${(q)1}\a"
}

autoload -Uz compinit add-zsh-hook
compinit
if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

# pfetch
export PF_INFO="ascii os kernel shell de uptime pkgs memory"
export PF_SEP=":"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx /usr/bin/i3
fi
cd 
