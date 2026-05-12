#!/bin/bash

echo "Baixando falcom-manager..."
wget https://github.com/oliveiraezequiel/falcom/raw/main/falcom-manager.tar.gz

echo "Descompactando..."
tar -xvzf falcom-manager.tar.gz

echo "Copiando para /usr/share..."
cp -r falcom-manager /usr/share/

echo "Removendo arquivo compactado..."
rm -f falcom-manager.tar.gz

echo "Concluído!"
