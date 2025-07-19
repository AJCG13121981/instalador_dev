#!/bin/bash

echo "=== COMPROBANDO ESTADO DEL SISTEMA ==="

# Verificar si dpkg está bloqueado
if sudo fuser /var/lib/dpkg/lock-frontend >/dev/null 2>&1 || sudo fuser /var/lib/dpkg/lock >/dev/null 2>&1; then
  echo "❌ dpkg está bloqueado. Por favor, ejecuta: sudo dpkg --configure -a"
  echo "Abortando instalación..."
  exit 1
fi

# Verificar errores pendientes de configuración
if sudo test -f /var/lib/dpkg/lock || sudo test -f /var/lib/dpkg/lock-frontend; then
  echo "❌ Se detectó bloqueo de dpkg. Ejecuta primero: sudo dpkg --configure -a"
  exit 1
fi

echo "=== ACTUALIZANDO SISTEMA ==="
sudo apt update && sudo apt upgrade -y

echo "=== INSTALANDO HERRAMIENTAS BÁSICAS DE DESARROLLO ==="
sudo apt install git default-jdk python3 python3-pip curl wget build-essential nodejs npm postgresql postgresql-contrib docker.io -y

echo "=== INSTALANDO HERRAMIENTAS COMPLEMENTARIAS ==="
sudo apt install zip unzip tar net-tools htop lsof tmux zsh jq gnupg bat neofetch httrack docker-compose nmap -y

echo "=== MOSTRANDO VERSIONES DE LAS HERRAMIENTAS INSTALADAS ==="
git --version
java -version
python3 --version
pip3 --version
curl --version
wget --version
gcc --version
make --version
node -v
npm -v
psql --version
docker --version
unzip -v
tar --version
ifconfig --version 2>/dev/null || echo "ifconfig no disponible"
lsof -v
htop --version
tmux -V
zsh --version
jq --version
gpg --version
batcat --version
neofetch --version
httrack --version
docker-compose --version
nmap --version

echo "=== INSTALACIÓN COMPLETADA ==="

echo "=== INSTALANDO ZSH Y OH-MY-ZSH ==="
sudo apt install curl zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "✅ Shell cambiado a zsh (reinicia terminal para aplicar)"


