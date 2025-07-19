#!/bin/bash

echo "===== RESULTADOS DE VERIFICACIÓN ====="

check() {
  if command -v $2 >/dev/null 2>&1; then
    version_output=$($3 2>&1 | head -n 1)
    printf "✅ %-20s %s\n" "$1:" "$version_output"
  else
    printf "❌ %-20s NO INSTALADO\n" "$1:"
  fi
}

check "Git" git "git --version"
check "Java (JDK)" java "java -version"
check "Python 3" python3 "python3 --version"
check "Pip 3" pip3 "pip3 --version"
check "Curl" curl "curl --version"
check "Wget" wget "wget --version"
check "GCC (C Compiler)" gcc "gcc --version"
check "Make" make "make --version"
check "Node.js" node "node -v"
check "npm" npm "npm -v"
check "PostgreSQL" psql "psql --version"
check "Docker" docker "docker --version"
check "Unzip" unzip "unzip --version"
check "Tar" tar "tar --version"
check "Ifconfig (net-tools)" ifconfig "ifconfig --version"
check "lsof" lsof "lsof -v"
check "htop" htop "htop --version"

echo "===== FIN DE VERIFICACIÓN ====="

