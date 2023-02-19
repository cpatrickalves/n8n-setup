#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

docker-compose stop
docker-compose down -v
docker-compose rm -f
docker system prune -a -f

docker-compose pull
docker-compose build
docker-compose up -d