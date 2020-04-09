#!/bin/bash

echo "Installing Python3 environment..."
sleep 1

if ! [ -x "$(command -v pip3)" ]; then
	sudo apt install python3 python3-pip -y
fi

pip3 install black pylint pipreqs vitualenv

