xrandr -s 1920x1080 -r 165
xwallpaper --zoom ~/Pictures/bg/cool.jpg
xrdb '/home/luiselprrayt/.config/Xresources'
setxkbmap -layout us -variant altgr-intl -option nodeadkeys
xset s noexpose s noblank -dpms
xset r rate 500 75

gentoo-pipewire-launcher &
# xcompmgr -n &
picom --backend glx --vsync &
dwmblocks &
mpd

mpv --fullscreen --no-osc ~/Videos/win-startup.mp4 &

exec dwm
