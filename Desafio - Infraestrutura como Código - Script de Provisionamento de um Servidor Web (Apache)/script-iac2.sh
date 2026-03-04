#!/bin/bash

echo "Atualizando o servidor!"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get unzip -y

echo "Efetuando download e cópia dos arquivos da aplicação!"

cd /tmp
wget https://codeload.github.com/denilsonbonatti/linux-site-dio/zip/refs/heads/main
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/