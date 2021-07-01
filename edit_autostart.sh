#!/bin/bash

active_nic=$(nmcli device status | grep -e "connected" | grep -v "disconnected" | grep -v "docker" | awk 'NR==1{print $1}')

echo "active_nic: ${active_nic}"

cat ~/.config/autostart/indicator-ip.desktop | grep "Exec"

new_command="Exec=bash -c \"sleep 30 ; indicator-ip --interface ${active_nic}\""
echo $new_command

sed -i "s|Exec=.*|$new_command|" ~/.config/autostart/indicator-ip.desktop

cat ~/.config/autostart/indicator-ip.desktop | grep "Exec"
