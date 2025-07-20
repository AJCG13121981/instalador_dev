#!/bin/bash

echo "===== VERIFICACIÓN ====="

verificar() {
  comando=$1
  nombre=$2
  $comando &>/dev/null
  if [ $? -eq 0 ]; then
    echo "✅ $nombre"
  else
    echo "❌ $nombre"
  fi
}

verificar "git --version" "Git"
verificar "java -version" "Java"
verificar "python3 --version" "Python"
verificar "pip3 --version" "pip"
verificar "curl --version" "curl"
verificar "wget --version" "wget"
verificar "gcc --version" "GCC"
verificar "make --version" "make"
verificar "node -v" "Node.js"
verificar "npm -v" "npm"
verificar "psql --version" "PostgreSQL"
verificar "docker --version" "Docker"
verificar "unzip -v" "Unzip"
verificar "zip -v" "Zip"
verificar "tar --version" "Tar"
verificar "ifconfig --version" "net-tools"
verificar "htop --version" "htop"
verificar "lsof -v" "lsof"
verificar "tmux -V" "tmux"
verificar "zsh --version" "zsh"
verificar "jq --version" "jq"
verificar "gpg --version" "gpg"
verificar "batcat --version" "bat"
verificar "neofetch --version" "neofetch"
verificar "httrack --version" "httrack"
verificar "docker-compose --version" "docker-compose"
verificar "nmap --version" "nmap"

echo "========================"


