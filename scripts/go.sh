#!/usr/bin/env bash
set -e

echo "Fetching Golang"
curl -L -o golang.tar.gz https://storage.googleapis.com/golang/go${VERSION}.linux-amd64.tar.gz

echo "Installing Golang"
tar xfz golang.tar.gz
sudo mv go /usr/local/share/go
sudo chown -R ubuntu:ubuntu /usr/local/share/go

mkdir ~/go
echo 'export GOROOT=/usr/local/share/go' >> ~/.bashrc
echo 'export GOPATH=~/go:/vagrant/work/go' >> ~/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:~/go/bin' >> ~/.bashrc

export GOROOT=/usr/local/share/go
export GOPATH=~/go
/usr/local/share/go/bin/go get github.com/nadnerb/hcl-conversion
/usr/local/share/go/bin/go install github.com/nadnerb/hcl-conversion

echo "Cleaning up"
rm golang.tar.gz
