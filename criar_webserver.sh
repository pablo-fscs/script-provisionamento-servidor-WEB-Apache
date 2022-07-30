#!/bin/bash

echo "Realizando a busca de arquivos de atualização..."

apt-get update

echo "busca concluída."
echo "Realizando a atualização do sistema..."

apt-get upgrade -y

echo "Atualização concluída"
echo "Iniciando a instalação do servidor Apache2..."

apt-get install apache2 -y

echo "Instalação concluída."
echo "Iniciando a instalação do unzip..."

apt-get install unzip -y

echo "Instalação concluída."
echo "Realizando o download da pasta da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Download concluído."
echo "Realizando a transferência dos arquivos para o diretório do Apache..."

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Transferência concluída."
