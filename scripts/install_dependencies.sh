#!/bin/bash
sudo apt update -y
sudo apt install -y ruby wget python3
cd /home/ubuntu
wget https://aws-codedeploy-${var.region}.s3.${var.region}.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
