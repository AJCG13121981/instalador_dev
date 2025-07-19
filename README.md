# 🛠️ Instalación automática de entorno DEV en Ubuntu

Este proyecto permite configurar completamente una máquina Ubuntu para desarrollo sin instalaciones manuales. Solo necesitas clonar este repositorio y ejecutar dos comandos para dejar tu sistema preparado.

Para empezar, se clona el repositorio desde GitHub con este comando:  
`git clone git@github.com:AJCG13121981/instalador_dev.git && cd instalador_dev`

Después, se conceden permisos de ejecución a todos los archivos con:  
`chmod +x *.sh`

Con esto hecho, se lanza el proceso de instalación automática con:  
`./instalador_dev.sh`

Durante esta fase, el sistema se actualizará y se instalarán herramientas clave como Git, Java, Python, Node.js, Docker, PostgreSQL, herramientas de red, compresores y utilidades del sistema. Si alguna ya está instalada, se omite sin modificarla. En cada caso se mostrará su versión como confirmación. Se te pedirá la contraseña `sudo` al inicio si no tienes privilegios activos.

Una vez finalizada la instalación, se recomienda lanzar la verificación para comprobar que todo está correctamente instalado. Para ello se usa:  
`./verificar_instalacion.sh`

Este comando no instala nada. Recorre todas las herramientas que deberían estar presentes y muestra un informe como este:

==== RESULTADOS DE VERIFICACIÓN =====
✅ Git: git version 2.34.1
✅ Java (JDK): openjdk version "11.0.20"
✅ Python 3: Python 3.10.12
❌ Docker: NO INSTALADO
...
===== FIN DE VERIFICACIÓN =====


La instalación cubre herramientas esenciales para desarrolladores: Git, Java JDK, Python y pip, Node.js y npm, curl, wget, gcc, make, PostgreSQL, Docker, zip, unzip, tar, ifconfig (net-tools), htop y lsof.

Todo este sistema ha sido probado en Ubuntu 20.04 y versiones posteriores. Requiere conexión a internet y permisos `sudo` durante la instalación. Está diseñado para desarrolladores que quieren ahorrar tiempo configurando su entorno desde cero.

Este proyecto es de código abierto y se distribuye bajo licencia MIT, por lo que puedes usarlo, modificarlo o compartirlo libremente.

Autor: Ángel Cumbreño  
GitHub: [@AJCG13121981](https://github.com/AJCG13121981)







