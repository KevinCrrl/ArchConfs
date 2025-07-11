#
# ~/.bashrc
#

# Mis personalizaciones xd
python ~/banner.py
alias myfetch="fastfetch --logo-type kitty --logo-width 50 --logo /home/Kevin/Imágenes/arch.png"
alias NewYear="curl https://raw.githubusercontent.com/sergiolepore/ChristBASHTree/refs/heads/master/tree-ES.sh | bash"
alias bbrillo="exec brightnessctl s 10%- &"
alias sbrillo="exec brightnessctl s 10%+ &"
alias build-uaspl="pyinstaller --onefile --add-data "$(python -c 'import pyfiglet, os; print(os.path.dirname(pyfiglet.__file__) + "/fonts")'):pyfiglet/fonts" UASPL.py
"
# alias de seguridad

alias rm='rm -i --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'

alias ln='ln -i'
alias mkdir='mkdir -p -v'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
