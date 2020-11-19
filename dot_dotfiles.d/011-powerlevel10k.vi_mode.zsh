zle-keymap-select () {
	zle reset-prompt
	zle -R
}

zle -N zle-keymap-select

bindkey -v
KEYTIMEOUT=1
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='green'