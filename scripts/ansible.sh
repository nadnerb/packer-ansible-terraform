#!/bin/bash -eux
set -e

# Install Ansible repository.
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible

# Install Ansible.
echo "Installing Ansible"
apt-get -y install python-pip ansible
pip install boto
