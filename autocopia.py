import subprocess
import os

def iguales(archivo1, archivo2):
    with open(archivo1, 'rb') as f1, open(archivo2, 'rb') as f2:
        return f1.read() == f2.read()


archivos = {
    "~/.config/picom/picom.conf": "~/ArchConfs/picom.conf",
    "~/.config/konfigsnk/openi3.sh": "~/ArchConfs/openi3.sh",
    "~/.vimrc": "~/ArchConfs/.vimrc",
    "~/.bashrc": "~/ArchConfs/.bashrc",
    "~/.config/openbox/autostart": "~/ArchConfs/autostart",
    "~/.config/openbox/menu.xml": "~/ArchConfs/menu.xml",
    "~/.config/i3/config": "~/ArchConfs/config",
    "~/.vim/.ycm_extra_conf.py": "~/ArchConfs/.ycm_extra_conf.py",
    "~/banner.py": "~/ArchConfs/banner.py"
}

for original, copia in archivos.items():
    original = os.path.expanduser(original)
    copia = os.path.expanduser(copia)
    if not iguales(original, copia):
        print(f">> El archivo {original} tiene cambios a comparación de {copia}")
        subprocess.run(["cp", original, copia], check=True)
        print(f"> Se copiaron los nuevos cambios de {original} a {copia}")
    else:
        print(f"El archivo {original} sigue siendo igual a {copia}")
