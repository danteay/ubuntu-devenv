#!/bin/bash

echo "Installing Cloud tools..."
sleep 1


# Install AWS CLI
if ! [ -x "$(command -v aws)" ]; then
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscli2.zip
	sudo ./aws/install
fi

# Install Serverless CLI
if ! [ -x "$(command -v serverless)" ]; then
	curl -o- -L https://slss.io/install | bashs
fi

# Install GCloud CLI
if ! [ -x "$(command -v gcloud)" ]; then
	curl https://sdk.cloud.google.com | bash
fi

# Install Heroku CLI
if ! [ -x "$(command -v heroku)" ]; then
	sudo snap install --classic heroku
fi

