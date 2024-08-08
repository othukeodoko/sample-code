#!/bin/bash

REQUIRED_PKG_1="apt-transport-https"
REQUIRED_PKG_2="dotnet-sdk-7.0"
REQUIRED_PKG_3="nginx"

apt update

# install  apt-transport-https
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG_1|grep "install ok installed")
echo Checking for $REQUIRED_PKG_1: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG_1. Setting up $REQUIRED_PKG_1."
  sudo apt --yes install $REQUIRED_PKG_1
fi


sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-bionic-prod bionic main" > /etc/apt/sources.list.d/dotnetdev.list'
apt update


# install  dotnet-sdk-7.0
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG_2|grep "install ok installed")
echo Checking for $REQUIRED_PKG_2: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG_2. Setting up $REQUIRED_PKG_2."
  sudo apt --yes install $REQUIRED_PKG_2
fi

# install  nginx
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG_3|grep "install ok installed")
echo Checking for $REQUIRED_PKG_3: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG_3. Setting up $REQUIRED_PKG_3."
  sudo apt --yes install $REQUIRED_PKG_3
fi