#!/usr/bin/sh

# Mi teclado en idioma español pero de latam
setxkbmap -layout latam

# Aplicar mi fondo de pantalla
feh --bg-scale /home/Kevin/Descargas/fondo_animado.jpg &

# Config del touchpad
xinput set-prop "SYNA32AC:00 06CB:CD50 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "SYNA32AC:00 06CB:CD50 Touchpad" "libinput Tapping Button Mapping Enabled" 1 0
xinput set-prop "SYNA32AC:00 06CB:CD50 Touchpad" "libinput Natural Scrolling Enabled" 1
xinput set-prop "SYNA32AC:00 06CB:CD50 Touchpad" "libinput Accel Profile Enabled" 0

# Aplicar mi compositor picom
picom --config ~/.config/picom/picom.conf &
