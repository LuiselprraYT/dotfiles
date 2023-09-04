#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="nvim"
export PATH="$HOME/.local/bin/:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

# setterm -blank 0 -powersave off -powerdown 0
# xset s off

startx
