xrandr -s 1920x1080 -r 165
xwallpaper --zoom ~/Pictures/bg/038de5d84c006667b7cbc6311c934b61.jpg
xrdb ~/.Xresources
setxkbmap -layout us -variant altgr-intl -option nodeadkeys
xset s noexpose s noblank -dpms
xset r rate 500 75

gentoo-pipewire-launcher &
mpd
xcompmgr -n &
dwmblocks &

mpv --fullscreen --no-osc ~/Videos/win-startup.mp4 &

exec dwm
