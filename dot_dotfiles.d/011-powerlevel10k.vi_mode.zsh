zle-keymap-select () {
	zle reset-prompt
	zle -R
}

zle -N zle-keymap-select

bindkey -v
KEYTIMEOUT=1
