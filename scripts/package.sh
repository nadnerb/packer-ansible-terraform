#!/usr/bin/env bash
set -e

echo "Fetching Hashicorp [$PACKAGE]"

mkdir $PACKAGE
cd $PACKAGE
curl -L -o $PACKAGE.zip https://dl.bintray.com/mitchellh/${PACKAGE}/${PACKAGE}_${VERSION}_linux_amd64.zip

echo "Installing $PACKAGE"
unzip ${PACKAGE}.zip >/dev/null
rm ${PACKAGE}.zip

sudo chmod +x $PACKAGE
cd ..
sudo mv $PACKAGE /usr/local/share/$PACKAGE
sudo ln -s /usr/local/share/$PACKAGE/$PACKAGE /usr/local/bin/$PACKAGE

