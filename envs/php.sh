#!/bin/bash

echo "Installing PHP environment..."
sleep 1

if ! [ -x "$(command -v php)" ]; then
	PHPV=$(echo $(apt search php7. | grep '^php7\.' | head -1) | tr "/" "\n" | head -1)

	sudo apt install \
  		$PHPV \
  		$PHPV-cli \
  		$PHPV-cgi \
  		$PHPV-common \
  		$PHPV-bz2 \
  		$PHPV-curl \
  		$PHPV-dba \
  		$PHPV-dev \
  		$PHPV-fpm \
  		$PHPV-json \
  		$PHPV-mbstring \
  		$PHPV-mysql \
  		$PHPV-odbc \
  		$PHPV-opcache \
  		$PHPV-pgsql \
  		$PHPV-readline \
  		$PHPV-soap \
  		$PHPV-sqlite3 \
  		$PHPV-sybase \
  		$PHPV-xml \
  		$PHPV-xsl \
  		$PHPV-zip \
  		-y
fi

if ! [ -x "$(command -v composer)" ]; then
	curl -o- https://getcomposer.org/installer | php
	sudo mv ./composer.phar /usr/local/bin/composer

	echo "export PATH=\$HOME/.config/composer/vendor/bin/:\$PATH" >> ~/.zshrc

	composer global require "squizlabs/php_codesniffer=*"
fi
