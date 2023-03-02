#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y


echo "Instalando aplicações necessárias..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -r * /var/www/html/

