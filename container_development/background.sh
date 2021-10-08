#!/bin/bash

# remove docker
apt-get remove -y docker docker-engine docker.io containerd runc

# install dependancies
apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release \
  tmux \
  fish \
  figlet
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io

# install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# install lessons
# git clone https://github.com/0xOllie/blueteam/tree/container-lab lesson-one

git clone https://github.com/docker/awesome-compose/tree/master/nginx-flask-mysql /tmp/lesson-two
mv /tmp/lesson-two/nginx-flask-mysql /root/lesson-two

# Signal to the wait script that the script is complete
echo "done" >> /tmp/status
