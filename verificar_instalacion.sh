#!/bin/bash

echo "===== RESULTADOS DE VERIFICACIÓN ====="

# Función para verificar y mostrar versión o error
verificar() {
  comando=$1
  nombre=$2
  salida=$($comando 2>/dev/null)
  if [ $? -eq 0 ]; then
    echo "✅ $nombre: $salida"
  else
    echo "❌ $nombre: NO INSTALADO"
  fi
}

verificar "git --version" "Git"
verificar "java -version | head -n 1" "Java (JDK)"
verificar "python3 --version" "Python 3"
verificar "pip3 --version" "pip"
verificar "curl --version | head -n 1" "curl"
verificar "wget --version | head -n 1" "wget"
verificar "gcc --version | head -n 1" "GCC"
verificar "make --version | head -n 1" "make"
verificar "node -v" "Node.js"
verificar "npm -v" "npm"
verificar "psql --version" "PostgreSQL"
verificar "docker --version" "Docker"
verificar "unzip -v | head -n 1" "Unzip"
verificar "zip -v | head -n 1" "Zip"
verificar "tar --version | head -n 1" "Tar"
verificar "ifconfig --version" "ifconfig (net-tools)"
verificar "htop --version" "htop"
verificar "lsof -v | head -n 1" "lsof"
verificar "tmux -V" "tmux"
verificar "zsh --version" "zsh"
verificar "jq --version" "jq"
verificar "gpg --version | head -n 1" "gpg"
verificar "batcat --version" "bat"
verificar "neofetch --version" "neofetch"
verificar "httrack --version" "httrack"
verificar "docker-compose --version" "docker-compose"
verificar "nmap --version | head -n 1" "nmap"

echo "===== FIN DE VERIFICACIÓN ====="


