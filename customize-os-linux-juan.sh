#!/bin/bash

###########################################################################
# Este script precisa dos seguintes pacotes na pasta Downloads do sitema
# code_1.51.1-1605051630_amd64.deb
# google-chrome-stable_current_amd64.deb

# Deve ser executado na pasta de usuário
# /home/usuario
###########################################################################

# Criação da pasta MuGoL no diretorio /home
mkdir MuGoL

# Adição usuario "juan" ao grupo da maquina virtual "vboxsf"
adduser juan vboxsf 

# Instalação da ferramenta aptitude
apt-get install aptitude

# Instalaçao da ferramenta net-tools para ter o comando ifconfig
apt-get install net-tools

# Instalaçao connman
apt-get install connman

# Instalaçao nginx
apt-get nginx

# Instalação git
apt-get install git

# Instalção Python3 e pip3
apt-get install -y python3-pip

# Instalacao curl
apt-get install curl

# Instalação node
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash
sudo apt-get install -y nodejs

# Instalação development tools 
sudo apt-get install gcc g++ make

# Instalação yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install yarn

# Instalação Qt

sudo apt-get install libxkbcommon-x11-0

cd ~/Downloads

./qt-unified-linux-x64-4.0.1-1-online.run

# Instalação broser-sync
npm install -g browser-sync

# Instalação Google-chrome browser
cd ~/Downloads
dpkg -i google-chrome-stable_current_amd64.deb

# Instalação Visual Studio Code
dpkg -i code_1.51.1-1605051630_amd64.deb

# Confirmação da execução OK do script
sync

echo "process succesful Juan! - just test"
