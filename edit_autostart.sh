#!/bin/bash

ACTIVE_NIC=$(nmcli device status | grep -e "connected" | grep -v "docker" | awk '{print $1}')

echo ${ACTIVE_NIC}

cat ~/.config/autostart/indicator-ip.desktop | grep "Exec"

NEW_COMMAND="Exec=bash -c \"sleep 30 ; indicator-ip --interface ${ACTIVE_NIC}\""
echo $NEW_COMMAND

sed -i "s|Exec=.*|$NEW_COMMAND|" ~/.config/autostart/indicator-ip.desktop

cat ~/.config/autostart/indicator-ip.desktop | grep "Exec"
