# ansible-common

## Bootstrap

#### OS X
* curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap.sh | sh

#### Ubuntu
* curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | sh

## Install
Installs python packages.

* ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass

For local install
* ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass -i inventory

## OS Specific
Follow with OS specific playbook.
