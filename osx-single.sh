#!/usr/bin/env bash
set -euo pipefail

cd $HOME

echo "Install Xcode"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap-xcode.sh | sh

echo "Bootstrap"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap.sh | sh

echo "Clone ansible-osx"
ANSIBLE_OSX_DIR="$HOME/ansible-osx"
if [ -d "$ANSIBLE_OSX_DIR" ]; then
  rm -rf $ANSIBLE_OSX_DIR
fi
git clone https://github.com/andrewtchin/ansible-osx.git $ANSIBLE_OSX_DIR

cd $ANSIBLE_OSX_DIR
echo "Run ansible-osx"
ansible-playbook -vvv playbooks/osx-preinstall.yml --ask-become-pass --extra-vars=@vars/osx.yml -i inventory
ansible-playbook -vvv playbooks/osx.yml --ask-become-pass --extra-vars=@vars/osx.yml -i inventory

echo "Remove gpg.conf for dotfiles"
rm -f $HOME/.gnupg/gpg.conf

echo "Installer exiting"
