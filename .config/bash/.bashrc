# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.local/etc/aliasrc

GPG_TTY=$(tty)
export GPG_TTY
export PS1="[\[$(tput sgr0)\]\[\033[38;5;201m\]\u\[$(tput sgr0)\]\[$(tput bold)\]@\[$(tput sgr0)\]\[\033[38;5;201m\]\h\[$(tput sgr0)\] \W] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;201m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

n ()
{
    # Block nesting of nnn in subshells
    if [[ "${NNNLVL:-0}" -ge 1 ]]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The backslash allows one to alias n to nnn if desired without making an
    # infinitely recursive alias
    \nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
