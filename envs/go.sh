#!/bin/bash

echo "[y] Installing Golang environment... [y/n]:"
read -r option

if [ "$option" = "n" ]; then
	exit 0
fi

