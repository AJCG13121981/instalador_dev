# 🛠️ Instalador DEV para Ubuntu

Este proyecto permite configurar completamente una máquina Ubuntu para desarrollo sin instalaciones manuales. Solo necesitas ejecutar unos pocos comandos y tu sistema quedará totalmente preparado.

Ubuntu Desktop no incluye Git por defecto. Instálalo primero con:

sudo apt update && sudo apt install git -y

A continuación, clona el repositorio y accede a su carpeta:

git clone https://github.com/AJCG13121981/instalador_dev.git && cd instalador_dev

Concede permisos de ejecución a todos los scripts del proyecto:

chmod +x *.sh

Lanza el instalador principal:

./instalador_dev.sh

Este script comprueba si dpkg está bloqueado (por archivos lock) y, si es así, ofrece al usuario la opción de eliminarlos automáticamente y continuar. Si el usuario acepta, los bloqueos se eliminan, se ejecuta dpkg --configure -a, y la instalación prosigue sin interrupciones.

Después, el sistema se actualiza completamente y se instalan herramientas clave para desarrollo: Git, Java JDK, Python 3, pip, Node.js, npm, PostgreSQL, Docker, curl, wget, gcc, make, unzip, zip, tar, net-tools, htop, lsof, tmux, zsh, jq, gpg, bat, neofetch, httrack, docker-compose y nmap. Para cada una se muestra su versión como confirmación.

Al final, instala ZSH y configura automáticamente Oh My Zsh como shell por defecto.

Una vez finalizada la instalación, puedes verificar que todo está correctamente instalado con el siguiente comando:

./verificar_instalacion.sh

Este script no instala nada. Solo recorre las herramientas esperadas y muestra un informe como este:

===== RESULTADOS DE VERIFICACIÓN =====  
✅ Git: git version 2.43.0  
✅ Java (JDK): openjdk version "11.0.20"  
✅ Python 3: Python 3.12.3  
❌ Docker: NO INSTALADO  
...  
===== FIN DE VERIFICACIÓN =====

Este entorno ha sido probado en Ubuntu 20.04 y versiones superiores. Se requiere conexión a internet y privilegios sudo.

Este proyecto es de código abierto bajo licencia MIT. Puedes usarlo, modificarlo o compartirlo libremente.

Autor: Ángel Cumbreño  
GitHub: https://github.com/AJCG13121981










