#!/usr/bin/env bash
set -euo pipefail

cd "$HOME"

echo "Bootstrap"
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | bash

echo "Clone ansible-ubuntu"
ANSIBLE_UBUNTU_DIR="$HOME/ansible-ubuntu"
if [ -d "$ANSIBLE_UBUNTU_DIR" ]; then
  rm -rf "$ANSIBLE_UBUNTU_DIR"
fi
git clone https://github.com/andrewtchin/ansible-ubuntu.git "$ANSIBLE_UBUNTU_DIR"

cd "$ANSIBLE_UBUNTU_DIR"
echo "Run ubuntu-browsing playbook"
ansible-playbook -vvv playbooks/ubuntu-browsing.yml --ask-become-pass -c local --extra-vars=@vars/ubuntu.json -i inventory

echo "Install script exiting"
