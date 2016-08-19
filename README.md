# ansible-common

Scripts to run Ansible on OSX or Ubuntu

## Single touch install

Runs bootstrap and OS specific playbooks.

#### Ubuntu

##### Desktop

Tested with Ubuntu Desktop 16.04

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-desktop.sh | bash
```

With developer playbook
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-desktop.sh | bash -s developer
```

Install dotfiles

WARNING: This installs an authorized_keys file from dotfiles and starts sshd. Replace dotfiles with your own.
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/dotfiles.sh | bash
```

##### Server

Tested with Ubuntu Server 16.04

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-server.sh | bash
```

#### OS X

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-single.sh | sh
```

Without installing Xcode (Assumes already installed):
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-single-skip-xcode.sh | sh
```

Then set OS X defaults:
```
cd ~/ansible-osx; ansible-playbook -vvv playbooks/osx-defaults.yml --ask-sudo-pass --extra-vars=@vars/osx.yml
```

## Normal install

### Bootstrap

#### Ubuntu

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | sh
```

#### OS X

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap.sh | sh
```

### OS Specific Customizations

Follow with OS specific playbook.
* https://github.com/andrewtchin/ansible-ubuntu
* https://github.com/andrewtchin/ansible-osx
