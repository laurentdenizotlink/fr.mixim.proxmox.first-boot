#!/bin/bash

apt upgrade -y
apt update -y

apt install wireguard -y
wg setconf wg0  "$(wget -qLO - https://raw.githubusercontent.com/laurentdenizotlink/fr.mixim.proxmox.first-boot/refs/heads/main/wg-test.conf)"
