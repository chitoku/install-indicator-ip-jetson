#!/bin/bash

sudo date

sudo apt-add-repository ppa:bovender/bovender -y
sudo apt-get update
sudo apt-get install -y indicator-ip

sudo apt-get install -y libcanberra-gtk-module libcanberra-gtk-module

indicator-ip --autostart

vi ~/.confgi/autostart/indicator-ip.desktop
