#!/bin/bash

echo "[y] Installing docker environment... [y/n]:"
read option

if [ "$option" = "n" ]; then
	exit 0
fi

# Install Docker
if [ -x "$(command -v docker)" ]; then
	sudo apt install \
    		apt-transport-https \
    		ca-certificates \
    		gnupg-agent \
    		software-properties-common \
		-y

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

	sudo add-apt-repository \
   		"deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

	sudo apt update && sudo apt-get install docker-ce docker-ce-cli containerd.io

   	if ! grep -q "docker" /etc/group; then
        	sudo groupadd docker
	fi

	usermod -a -G docker $USER
fi

# Install docker compose
if [ -x "$(command -v docker-compose)" ]; then
	sudo apt install docker-compose
fi
