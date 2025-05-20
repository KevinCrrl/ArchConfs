#
# ~/.bashrc
#

# Mis personalizaciones xd
python ~/banner.py
alias myfetch="fastfetch --logo-type kitty --logo-width 50 --logo /home/Kevin/Imágenes/arch.png"
alias NewYear="curl https://raw.githubusercontent.com/sergiolepore/ChristBASHTree/refs/heads/master/tree-ES.sh | bash"
alias bbrillo="exec brightnessctl s 10%- &"
alias sbrillo="exec brightnessctl s 10%+ &"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
