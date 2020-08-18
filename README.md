# ansible-common

Scripts to run Ansible on OSX or Ubuntu


-----

## Single touch install

Runs bootstrap and OS specific playbooks.

-----

### Ubuntu

#### Desktop

**WARNING**: This starts sshd, changes shell to zsh, and changes terminal color to solarized.

##### Desktop role

Tested with Ubuntu Desktop 20.04

```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-desktop.sh | bash
```

##### Developer role

Tested with Ubuntu Desktop 20.04

```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-developer.sh | bash
```

##### Browsing role

Tested with Ubuntu Desktop 20.04

```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-browsing.sh | bash
```

#### Server

**WARNING**: This starts sshd, changes shell to zsh, and changes terminal color to solarized.

Tested with Ubuntu Server 20.04

```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-server.sh | bash
```

#### Install dotfiles

**WARNING**: This installs an authorized_keys file. Replace dotfiles with your own.
```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/dotfiles.sh | bash
```

-----

### OS X

```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-single.sh | bash
```

Without installing Xcode (Assumes already installed):
```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-single-skip-xcode.sh | bash
```

Set OS X defaults:
```
cd ~/ansible-osx; ansible-playbook -vvv playbooks/osx-defaults.yml --ask-become-pass --extra-vars=@vars/osx.yml
```
Install dotfiles:

**WARNING**: This installs an authorized_keys file. Replace dotfiles with your own.
```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/dotfiles.sh | bash
```

-----

## Normal install

### Bootstrap

#### Ubuntu

```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | bash
```

#### OS X

```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap.sh | bash
```

### OS Specific

Run OS specific playbook.
* https://github.com/andrewtchin/ansible-ubuntu
* https://github.com/andrewtchin/ansible-osx


-----

Authorized Key

```
wget -qO- https://raw.githubusercontent.com/andrewtchin/ansible-common/master/authorized-key.sh | bash
```
