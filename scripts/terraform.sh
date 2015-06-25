#!/usr/bin/env bash

set -e

echo "Fetching Terraform"

cd /tmp
curl -L -o terraform.zip https://dl.bintray.com/mitchellh/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
#wget https://dl.bintray.com/mitchellh/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -O terraform.zip

echo "Installing Terraform..."
unzip terraform.zip >/dev/null
sudo chmod +x terraform
sudo mv terraform /usr/local/bin/terraform

