ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

if [[ ! -f ${ZIM_HOME}/zimfw.zsh ]]; then
    print -P "Installing zimfw..."
    command mkdir -p "${ZIM_HOME}" && command chmod g-rwX "${ZIM_HOME}"
    command curl -fsSL https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh -o ${ZIM_HOME}/zimfw.zsh && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        (print -P "%F{160}▓▒░ The Installation has failed.%f%b" && exit 1)
    command zsh ${ZIM_HOME}/zimfw.zsh install
fi

if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it does not exist or it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi

source ${ZIM_HOME}/init.zsh