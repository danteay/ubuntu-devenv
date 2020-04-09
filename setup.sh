#!/bin/bash

echo "Update and upgrade system..."
sleep 1

sudo apt update && sudo apt upgrade -y

echo "Installing generic libraries ..."
sleep 1

sudo apt install \
	unzip \
	snap \
	unrar \
	git \
	build-essential \
	make \
	curl \
	wget \
	gnupg2 \
	ca-certificates \
	libpq-dev \
	fzf \
	-y


cp $(pwd)/configs/.gitignore $HOME/.gitignore


if ! [ -x "$(command -v jq)" ]; then
	wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
	sudo mv ./jq-linux64 /usr/local/bin && chmod +x /usr/local/bin/jq
fi



if ! [ -x "$(command -v zsh))" ]; then
	echo "Setup zsh..."
	sleep 1

	sudo apt install zsh -y
	echo "zsh" >> ~/.bashrc
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi



echo "Install environments..."
sleep 1

for entry in $(pwd)/envs/*.sh
do
  sh $entry
done

