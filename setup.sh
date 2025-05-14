#!/bin/bash
read -p "Masukkan Hostname baru: " new_hostname
sudo echo $new_hostname > /etc/hostname
sudo hostname $new_hostname
hostname
sudo apt install -y openssh-server
wait 10
sudo /etc/init.d/ssh start
#sudo systemctl start ssh
sudo /usr/bin/rustdesk --password Tanobel2021
cp /usr/share/systemd/tmp.mount /etc/systemd/system/ && systemctl enable --now tmp.mount && systemctl status tmp.mount
