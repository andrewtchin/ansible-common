# ansible-common

## Bootstrap

### OS X
* curl -Lo /tmp/ansible-common-master.zip https://github.com/andrewtchin/ansible-common/archive/master.zip
* unzip /tmp/ansible-common-master -d /tmp
* chmod +x /tmp/ansible-common-master/osx-bootstrap.sh
* sudo /tmp/ansible-common-master/osx-bootstrap.sh

## Install
Installs python packages.

* ansible-playbook -vvv playbooks/ansible-common.yml --ask-sudo-pass

For local install
* ansible-playbook -vvv playbooks/ansible-common.yml --ask-sudo-pass -c local

## OS Specific
Follow with OS specific playbook.
