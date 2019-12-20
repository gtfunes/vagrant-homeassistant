#!/bin/bash

apt-get update
apt-get install git docker docker-compose -y
systemctl enable docker && systemctl start docker
git clone https://github.com/gtfunes/vagrant-homeassistant.git
chown -R vagrant:vagrant vagrant-homeassistant
cd vagrant-homeassistant
cp .env.example .env
usermod -aG docker $(whoami)
docker-compose up -d
