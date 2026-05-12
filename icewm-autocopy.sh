#!/bin/bash

echo "Baixando icewm..."
wget https://github.com/oliveiraezequiel/falcom/raw/main/icewm.tar.gz

echo "Descompactando..."
tar -xvzf icewm.tar.gz

echo "Copiando para /usr/share..."
cp -r icewm /usr/share/

echo "Removendo arquivo compactado..."
rm -f icewm.tar.gz

echo "Concluído!"
