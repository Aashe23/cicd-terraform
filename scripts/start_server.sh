#!/bin/bash
echo "Starting application..." >> /home/ubuntu/app/start.log
cd /home/ubuntu/app || exit
sudo fuser -k 80/tcp || true
nohup python3 -m http.server 80 > server.log 2>&1 &