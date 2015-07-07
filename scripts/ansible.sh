#!/bin/bash -eux
set -e

# Install Ansible repository.
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible

# Install Ansible.
echo "Installing Ansible"
apt-get -y install python-pip ansible
pip install boto

curl -L -o /etc/ansible/hosts https://raw.githubusercontent.com/ansible/ansible/devel/plugins/inventory/ec2.py
chmod +x /etc/ansible/hosts

# this ec2.ini has private ip's and dns
# original is here: https://raw.githubusercontent.com/ansible/ansible/devel/plugins/inventory/ec2.ini
curl -L -o /etc/ansible/ec2.ini https://gist.githubusercontent.com/nadnerb/7f2e09289b3f07297321/raw/8d144c9536e20544ee3e58ec1857325caea91c82/ec2.ini
chmod 644 /etc/ansible/ec2.ini

