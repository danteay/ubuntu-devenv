#!/bin/bash

echo "Installing Ruby environment..."
sleep 1

if ! [ -x "$(command -v nvm)" ]; then
	gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

	curl -sSL https://get.rvm.io | bash -s stable
	
	echo "export NVM_DIR=\"\$HOME/.nvm\"" >> $HOME/.zshrc
	echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && \. \"\$NVM_DIR/nvm.sh\"" >> $HOME/.zshrc
	echo "[ -s \"\$NVM_DIR/bash_completion\" ] && \\. \"\$NVM_DIR/bash_completion\"" >> $HOME/.zshrc
	echo "export PATH=\"\$PATH:\$HOME/.rvm/bin\"" >> $HOME/.zshrc
	echo "[[ -s \"\$HOME/.rvm/scripts/rvm\" ]] && . \"\$HOME/.rvm/scripts/rvm\"" >> $HOME/.zshrc
fi

gem install rubocop
