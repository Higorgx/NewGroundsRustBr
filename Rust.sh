#!/bin/bash
apt-get update -y && apt-get upgrade -y
apt-get install fail2ban nano -y

mkdir ~/.ssh

chmod 0700 ~/.ssh

touch ~/.ssh/authorized_keys

chmod 0644 ~/.ssh/authorized_keys

nano ~/.ssh/authorized_keys


## steam cmd
sudo useradd -m steam
sudo passwd steam 
sudo -u steam -s
cd /home/steam
sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install lib32gcc-s1 steamcmd 

clear while : do
  exec ./RustDedicated -batchmode -nographics \
  -server.ip IPAddressHere \
  -server.port 28015 \
  -rcon.ip IPAddressHere \
  -rcon.port 28016 \
  -rcon.password "rcon password here" \
  -server.maxplayers 75 \
  -server.hostname "Server Name" \
  -server.identity "my_server_identity" \
  -server.level "Procedural Map" \
  -server.seed 12345 \
  -server.worldsize 3000 \
  -server.saveinterval 300 \-server.globalchat true \
  -server.description "Description Here" \
  -server.headerimage "512x256px JPG/PNG headerimage link here" \
  -server.url "Website Here"
  echo "\nRestarting server...\n" done

##port 28015”
