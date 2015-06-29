#!/usr/bin/env bash

set -e

echo "Fetching $PACKAGE"

cd /tmp
curl -L -o $PACKAGE.zip https://dl.bintray.com/mitchellh/${PACKAGE}/${PACKAGE}_${VERSION}_linux_amd64.zip

echo "Installing $PACKAGE"
unzip ${PACKAGE}.zip >/dev/null
sudo chmod +x $PACKAGE
sudo mv $PACKAGE /usr/local/bin/$PACKAGE

