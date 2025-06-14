#!/bin/bash

apt upgrade -y
apt updade -y

apt install wireguard -y
wg setconf wg0  "$(wget -qLO - https://github.com/laurentdenizotlink/fr.mixim.proxmox.first-boot/wg-test.conf)"
