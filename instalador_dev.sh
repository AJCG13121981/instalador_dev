#!/bin/bash

echo "=== ACTUALIZANDO SISTEMA ==="
sudo apt update && sudo apt upgrade -y

echo "=== INSTALANDO HERRAMIENTAS BÁSICAS DE DESARROLLO ==="
sudo apt install -y \
  git \
  default-jdk \
  python3 \
  python3-pip \
  curl \
  wget \
  build-essential \
  nodejs \
  npm \
  postgresql \
  postgresql-contrib \
  docker.io \
  zip \
  unzip \
  tar \
  net-tools \
  lsof \
  htop

echo "=== INSTALANDO HERRAMIENTAS COMPLEMENTARIAS ==="
sudo apt install -y \
  tmux \
  zsh \
  jq \
  gnupg \
  bat \
  neofetch \
  httrack \
  docker-compose \
  nmap

echo "=== MOSTRANDO VERSIONES DE LAS HERRAMIENTAS INSTALADAS ==="
git --version
java -version
python3 --version
pip3 --version
curl --version | head -n 1
wget --version | head -n 1
gcc --version | head -n 1
make --version | head -n 1
node -v
npm -v
psql --version
docker --version
unzip --version
tar --version
ifconfig --version 2>&1 | head -n 1
lsof -v | head -n 1
htop --version
tmux -V
zsh --version
jq --version
gpg --version | head -n 1
batcat --version
neofetch --version
httrack --version | head -n 1
docker-compose --version
nmap --version | head -n 1

echo "=== INSTALACIÓN COMPLETADA ==="
echo "=== INSTALANDO ZSH Y OH-MY-ZSH ==="

# Instalar zsh si no está presente
if ! command -v zsh >/dev/null 2>&1; then
  sudo apt install zsh -y
fi

# Instalar fuentes powerline para temas
sudo apt install fonts-powerline -y

# Instalar Oh My Zsh sin preguntas
export RUNZSH=no
export CHSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Aplicar tema 'agnoster' en .zshrc
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="agnoster"/' ~/.zshrc

# Añadir neofetch y limpiar pantalla al iniciar
echo -e "\nneofetch\nclear" >> ~/.zshrc

# Cambiar shell por defecto a zsh (solo si aún no es zsh)
if [ "$SHELL" != "$(which zsh)" ]; then
  chsh -s $(which zsh)
  echo "✅ Shell cambiado a zsh (reinicia terminal para aplicar)"
else
  echo "ℹ️ Ya estás usando zsh"
fi


