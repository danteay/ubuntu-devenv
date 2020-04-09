#!/bin/bash

echo "Installing VIM configuration..."

echo "You may need to run :PlugInstall on VIM at the first startup to install dependencies on .vimrc"

sleep 2


sudo apt install vim -y


# Install vim-plug for plugin installation
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


cp $(pwd)/configs/.vimrc $HOME/.vimrc
