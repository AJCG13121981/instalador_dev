🛠️ Instalación automática de entorno DEV en Ubuntu

Este proyecto permite configurar completamente una máquina Ubuntu para desarrollo sin instalaciones manuales.  
Solo necesitas ejecutar unos pocos comandos y dejar tu sistema listo para trabajar.

---

✅ PASO PREVIO: Instalar Git (necesario para clonar el repositorio)

Ubuntu Desktop no viene con Git instalado por defecto. Instálalo con:

sudo apt update && sudo apt install git -y

---

🔽 Clonar este repositorio y acceder a la carpeta:

git clone git@github.com:AJCG13121981/instalador_dev.git && cd instalador_dev

🔐 Conceder permisos de ejecución a todos los archivos del proyecto:

chmod +x *.sh

🚀 Iniciar la instalación automática:

./instalador_dev.sh

Durante esta fase, el sistema se actualizará y se instalarán herramientas clave como Git, Java, Python, Node.js, Docker, PostgreSQL, herramientas de red, compresores, analizadores, shell mejoradas y utilidades de consola.  
Si alguna ya está instalada, se omite sin modificarla. En cada caso se mostrará su versión como confirmación. Se te pedirá la contraseña sudo al inicio si no tienes privilegios activos.

---

🧪 Verificación de instalación

Una vez finalizada la instalación, se recomienda lanzar el verificador para comprobar que todo está correctamente instalado:

./verificar_instalacion.sh

Este comando no instala nada. Recorre todas las herramientas que deberían estar presentes y muestra un informe como este:

===== RESULTADOS DE VERIFICACIÓN =====  
✅ Git: git version 2.34.1  
✅ Java (JDK): openjdk version "11.0.20"  
✅ Python 3: Python 3.10.12  
❌ Docker: NO INSTALADO  
...  
===== FIN DE VERIFICACIÓN =====

---

📦 Herramientas que instala y verifica:

- Git
- JDK (Java)
- Python 3
- pip
- Node.js
- npm
- curl
- wget
- gcc, make (build-essential)
- PostgreSQL
- Docker
- unzip, zip, tar
- ifconfig (net-tools)
- htop
- lsof
- tmux
- zsh
- jq
- gpg
- bat
- neofetch
- httrack
- docker-compose
- nmap

---

🧠 Requisitos

- Ubuntu 20.04 o superior
- Conexión a Internet
- Usuario con permisos sudo

---

📄 Licencia

Este proyecto es de código abierto y se distribuye bajo licencia MIT. Puedes usarlo, modificarlo o compartirlo libremente.

---

👤 Autor: Ángel Cumbreño  
🔗 GitHub: @AJCG13121981








