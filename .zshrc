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

export PS1='%{%F{cyan}%}%d/ %{%F{red}%}» %{%f'
