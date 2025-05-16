#!/usr/bin/sh

# Mi teclado en idioma español pero de latam
setxkbmap -layout latam

# Restaurar mi fondo de pantalla
nitrogen --restore &

# Config del touchpad
xinput set-prop "SYNA32AC:00 06CB:CD50 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "SYNA32AC:00 06CB:CD50 Touchpad" "libinput Tapping Button Mapping Enabled" 1 0
xinput set-prop "SYNA32AC:00 06CB:CD50 Touchpad" "libinput Natural Scrolling Enabled" 1
xinput set-prop "SYNA32AC:00 06CB:CD50 Touchpad" "libinput Accel Profile Enabled" 0
