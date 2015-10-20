# ansible-common

## Bootstrap

### OS X
* curl -Lo /tmp/ansible-common-master.zip https://github.com/andrewtchin/ansible-common/archive/master.zip
* unzip /tmp/ansible-common-master -d /tmp
* sudo /tmp/ansible-common-mater/osx-bootstrap.sh

## Install
Installs python packages, SSH configuration, and dotfiles.

* ansible-playbook -vvv playbooks/ansible-common.yml --ask-sudo-pass

For local install
* ansible-playbook -vvv playbooks/ansible-common.yml --ask-sudo-pass -c local

## OS Specific
Follow with OS specific playbook.
