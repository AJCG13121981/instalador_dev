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

Este script comprueba si dpkg está bloqueado, actualiza el sistema con apt, instala herramientas de desarrollo (Git, JDK, Python, Node.js, PostgreSQL, Docker), herramientas de red y consola (wget, curl, unzip, htop, tmux, bat, jq, neofetch, etc.), muestra sus versiones tras la instalación y deja configurado ZSH con Oh My Zsh como shell predeterminada.

Una vez finalizado el proceso, puedes verificar qué herramientas están correctamente instaladas ejecutando:

./verificar_instalacion.sh

Este script no instala nada. Recorre todas las utilidades esperadas y genera un informe como este:

===== RESULTADOS DE VERIFICACIÓN =====  
✅ Git: git version 2.43.0  
✅ Java (JDK): openjdk version "11.0.20"  
✅ Python 3: Python 3.12.3  
❌ Docker: NO INSTALADO  
...  
===== FIN DE VERIFICACIÓN =====

Este entorno ha sido probado en Ubuntu 20.04 y versiones superiores. Se requiere conexión a internet y privilegios sudo.

Herramientas incluidas: Git, JDK, Python 3, pip, Node.js, npm, curl, wget, gcc, make, PostgreSQL, Docker, unzip, zip, tar, ifconfig (net-tools), htop, lsof, tmux, zsh, jq, gpg, batcat, neofetch, httrack, docker-compose y nmap.

Este proyecto es de código abierto bajo licencia MIT. Puedes usarlo, modificarlo o compartirlo libremente.

Autor: Ángel Cumbreño  
GitHub: https://github.com/AJCG13121981








