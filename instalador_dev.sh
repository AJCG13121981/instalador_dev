#!/bin/bash

echo "=== ACTUALIZANDO SISTEMA ==="
sudo apt update && sudo apt upgrade -y

echo "=== INSTALANDO GIT ==="
sudo apt install git -y
git --version

echo "=== INSTALANDO JDK ==="
sudo apt install default-jdk -y
java -version

echo "=== INSTALANDO PYTHON + PIP ==="
sudo apt install python3 python3-pip -y
python3 --version && pip3 --version

echo "=== INSTALANDO CURL Y WGET ==="
sudo apt install curl wget -y
curl --version && wget --version

echo "=== INSTALANDO BUILD-ESSENTIAL ==="
sudo apt install build-essential -y
gcc --version && make --version

echo "=== INSTALANDO NODE.JS + NPM ==="
sudo apt install nodejs npm -y
node -v && npm -v

echo "=== INSTALANDO POSTGRESQL ==="
sudo apt install postgresql postgresql-contrib -y
psql --version

echo "=== INSTALANDO DOCKER ==="
sudo apt install docker.io -y
docker --version

echo "=== INSTALANDO ZIP, UNZIP, TAR ==="
sudo apt install zip unzip tar -y

echo "=== INSTALANDO HERRAMIENTAS DE RED Y SISTEMA ==="
sudo apt install net-tools lsof htop -y

echo "=== INSTALACIÓN FINALIZADA ==="
