#!/bin/bash

# Atualizando os repositórios
apt-get update

# Baixando atualizações
apt-get upgrade -y

# Baixando e instalando o apache2 e unzip
apt-get install apache2 unzip -y

# Baixando projeto site
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp

# Descompactando o arquivo
unzip /tmp/main.zip -d /tmp

# Movendo os arquivos para o /var/www/html
mv /tmp/linux-site-dio-main/* /var/www/html

# Removendo o main.zip e o diretório vazio /tmp/linux-site-dio-main
rm -rf /tmp/linux-site-dio-main main.zip
