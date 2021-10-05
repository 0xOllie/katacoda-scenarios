#!/bin/bash
apt update -y && apt install -y tmux fish figlet
echo "done" >> /root/katacoda-finished
echo "testing" >> /root/docker-compose.yml
echo "done" >> /root/katacoda-background-finished
sleep 10
rm /root/katacoda-finished /root/katacoda-background-finished
tmux
fish
figlet Ready

