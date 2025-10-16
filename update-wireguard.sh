#!/bin/bash

apt upgrade -y
apt update -y

apt install wireguard -y
apt install resolvconf -y

wget -O /etc/wireguard/wg1.conf https://github.com/laurentdenizotlink/fr.mixim.proxmox.first-boot/blob/8e571db2e6f903752c5b6d33bac682c8baf43997/wg-test.conf
wg-quick up wg1
