#!/bin/bash

echo "=== COMPROBANDO ESTADO DEL SISTEMA ==="

# Verificar existencia de archivos de bloqueo
if sudo test -f /var/lib/dpkg/lock || sudo test -f /var/lib/dpkg/lock-frontend || sudo test -f /var/cache/apt/archives/lock; then
  echo "❌ Se detectó bloqueo de dpkg o apt."
  read -p "¿Quieres intentar eliminar los bloqueos automáticamente? (s/n): " respuesta
  if [[ "$respuesta" == "s" || "$respuesta" == "S" ]]; then
    echo "🔓 Eliminando locks..."
    sudo rm -f /var/lib/dpkg/lock
    sudo rm -f /var/lib/dpkg/lock-frontend
    sudo rm -f /var/cache/apt/archives/lock
    sudo dpkg --configure -a
    echo "✅ Locks eliminados. Continuando..."
  else
    echo "🛑 Abortando instalación. Ejecuta manualmente: sudo dpkg --configure -a"
    exit 1
  fi
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

echo "✅ Shell cambiado a zsh (reinicia terminal para aplicar
echo "=== INSTALANDO VISUAL STUDIO CODE ==="
if ! command -v code &> /dev/null; then
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
  sudo apt update
  sudo apt install code -y
else
  echo "✅ Visual Studio Code ya está instalado"
fi


