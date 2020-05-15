#!/bin/bash

echo "[y] Installing Database environment... [y/n]:"
read option

if [ "$option" = "n" ]; then
	exit 0
fi

# Install MySQL
if [ -x "$(command -v mysql)" ]; then
	sudo apt install mariadb-server -y
	sudo systemctl start mysqld
	sudo systemctl enable mysqld
	sudo mysql_secure_installation
fi

# Install Postgress
if [ -x "$(command -v psql)" ]; then
	sudo apt install posgresql postgresql-contrib
fi

# Install MongoDB
if [ -x "$(command -v mongo)" ]; then
	sudo apt install mongodb -y
	sudo systemctl enable mongodb
	sudo systemctl start mongodb
fi

# Install Redis
if [ -x "$(command -v redis-cli)" ]; then
	sudo apt install redis-server -y
fi

