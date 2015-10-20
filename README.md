# ansible-common

## Bootstrap

### OS X
* sudo ./osx-bootstrap.sh

## Install
Installs python packages, SSH configuration, and dotfiles.

* ansible-playbook -vvv playbooks/ansible-common.yml --ask-sudo-pass

For local install
* ansible-playbook -vvv playbooks/ansible-common.yml --ask-sudo-pass -c local

## OS Specific
Follow with OS specific playbook.
