# ansible-common

Scripts to run Ansible on OSX or Ubuntu

## Single touch install

Runs bootstrap and OS specific playbooks.


WARNING: This starts sshd, changes shell to zsh, and changes terminal color to solarized.

### Ubuntu

#### Desktop

Tested with Ubuntu Desktop 16.04

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-desktop.sh | bash
```

Install dotfiles

WARNING: This installs an authorized_keys file. Replace dotfiles with your own.
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/dotfiles.sh | bash
```

#### Server

Tested with Ubuntu Server 16.04

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-server.sh | bash
```

#### VMware VIC development

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-vmware.sh | bash
git clone git@github.com:andrewtchin/vic.git ~/go/src/github.com/vmware/vic
```

### OS X

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
