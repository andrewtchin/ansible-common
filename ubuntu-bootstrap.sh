#!/usr/bin/env bash

set -euox pipefail

sudo apt update
sudo apt upgrade -y python3
sudo apt install -y python3-pip openssh-server git
sudo pip3 install ansible