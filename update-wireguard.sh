#!/bin/bash

apt upgrade -y
apt update -y

apt install wireguard -y
apt install resolvconf -y

wget -O /etc/wireguard/wg1.conf https://raw.githubusercontent.com/laurentdenizotlink/fr.mixim.proxmox.first-boot/refs/heads/main/wg-test.conf
wg-quick up wg1
