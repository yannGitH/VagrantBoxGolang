#!/bin/bash
echo "#########################"
echo "# Start provisioning VM #"
echo "#########################"

echo "############################"
echo "# Updating package manager #"
echo "############################"
yum update
# su -c 'yum update'

echo "##################"
echo "# Installing Git #"
echo "##################"
yum install git -y

echo "#####################"
echo "# Installing Golang #"
echo "#####################"
yum install golang -y
