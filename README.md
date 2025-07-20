Este proyecto instala automáticamente un entorno completo de desarrollo en Ubuntu. Requiere conexión a internet y permisos sudo. Paso 1: Si no tienes Git instalado, ejecuta primero sudo apt update && sudo apt install git -y. Paso 2: Clona el repositorio con git clone https://github.com/AJCG13121981/instalador_dev.git && cd instalador_dev. Paso 3: Da permisos de ejecución con chmod +x *.sh. Paso 4: Ejecuta el script principal con ./instalador_dev.sh. Si durante la ejecución aparece el mensaje ❌ Se detectó bloqueo de dpkg o apt. ¿Quieres intentar eliminar los bloqueos automáticamente? (s/n): escribe s (o y si el sistema está en inglés) y pulsa enter. El sistema eliminará los archivos de bloqueo, ejecutará dpkg --configure -a y continuará la instalación. Una vez completada la instalación, puedes verificar que todo ha sido correctamente instalado con ./verificar_instalacion.sh. Este script no instala nada, solo muestra una lista con cada herramienta y si está o no instalada correctamente, por ejemplo: ===== VERIFICACIÓN ===== ✅ Git ✅ Java ✅ Python ❌ Docker ✅ curl ... ========================. Las herramientas que instala este sistema automáticamente son: Git, Java (JDK), Python 3, pip, Node.js, npm, curl, wget, gcc, make, PostgreSQL, Docker, unzip, zip, tar, ifconfig (net-tools), htop, lsof, tmux, zsh, jq, gpg, batcat, neofetch, httrack, docker-compose, y nmap. El sistema también configura Oh My Zsh automáticamente si no lo tenías instalado. Proyecto probado en Ubuntu 20.04 y posteriores. Licencia MIT. Autor: Ángel Cumbreño. GitHub: @AJCG13121981.










