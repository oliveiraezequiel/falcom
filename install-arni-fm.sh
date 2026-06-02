#!/bin/bash

# ==================================================
# Instalador Automático do Arni-FM
# Equipes Falcon, Arni, edxOS e edxlinux
# ==================================================

# Verifica se é root
if [ "$(id -u)" != "0" ]; then
    echo "Erro: execute este script como root."
    exit 1
fi

echo "Baixando arni-fm.tar.gz..."

wget -O /tmp/arni-fm.tar.gz \
https://raw.githubusercontent.com/oliveiraezequiel/falcom/main/arni-fm.tar.gz

if [ ! -f /tmp/arni-fm.tar.gz ]; then
    echo "Falha no download."
    exit 1
fi

echo "Criando diretórios..."

mkdir -p /usr/local/bin
mkdir -p /usr/share

echo "Copiando arquivo compactado..."

cp /tmp/arni-fm.tar.gz /usr/local/bin/
cp /tmp/arni-fm.tar.gz /usr/share/

echo "Descompactando em /usr/local/bin..."

tar -xzf /usr/local/bin/arni-fm.tar.gz -C /usr/local/bin

echo "Descompactando em /usr/share..."

tar -xzf /usr/share/arni-fm.tar.gz -C /usr/share

echo "Removendo arquivos compactados..."

rm -f /usr/local/bin/arni-fm.tar.gz
rm -f /usr/share/arni-fm.tar.gz
rm -f /tmp/arni-fm.tar.gz

echo ""
echo "========================================"
echo "Instalação concluída com sucesso!"
echo ""
echo "As equipes Falcon, Arni, edxOS e edxlinux agradecem."
echo "========================================"
