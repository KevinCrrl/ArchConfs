#
# ~/.bashrc
#

# Mis personalizaciones xd
python ~/banner.py
alias myfetch="fastfetch --logo-width 50 --logo /home/Kevin/Imágenes/arch.png"
alias NewYear="curl https://raw.githubusercontent.com/sergiolepore/ChristBASHTree/refs/heads/master/tree-ES.sh | bash"
alias bbrillo="exec brightnessctl s 10%- &"
alias sbrillo="exec brightnessctl s 10%+ &"
alias build-uaspl="pyinstaller --onefile --add-data "$(python -c 'import pyfiglet, os; print(os.path.dirname(pyfiglet.__file__) + "/fonts")'):pyfiglet/fonts" UASPL.py
"
alias newmirrors="sudo reflector --verbose --latest 5 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"

# alias de seguridad

alias rm='rm -i --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'

alias ln='ln -i'
alias mkdir='mkdir -p -v'

# Configuración para GPG en entornos gráficos incompletos
export GPG_TTY=$(tty)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=/home/Kevin/.local/bin:$PATH

export ANDROID_HOME=/opt/android-sdk/
export PATH=$PATH:$ANDROID_HOME/cmdline-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin
