#!/bin/bash -eux

set -e

# Updating and Upgrading dependencies
apt-get update -y -qq > /dev/null
apt-get upgrade -y -qq > /dev/null
sudo apt-get -y -q install curl wget git vim screen unzip

