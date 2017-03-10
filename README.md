# ansible-common

Scripts to run Ansible on OSX or Ubuntu


## Single touch install

Runs bootstrap and OS specific playbooks.


### Ubuntu

#### Desktop

**WARNING**: This starts sshd, changes shell to zsh, and changes terminal color to solarized.

Tested with Ubuntu Desktop 16.04

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-desktop.sh | bash
```

#### Server

**WARNING**: This starts sshd, changes shell to zsh, and changes terminal color to solarized.

Tested with Ubuntu Server 16.04

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-server.sh | bash
```

#### Install dotfiles

**WARNING**: This installs an authorized_keys file. Replace dotfiles with your own.
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/dotfiles.sh | bash
```


### OS X

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-single.sh | sh
```

Without installing Xcode (Assumes already installed):
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-single-skip-xcode.sh | sh
```

Set OS X defaults:
```
cd ~/ansible-osx; ansible-playbook -vvv playbooks/osx-defaults.yml --ask-become-pass --extra-vars=@vars/osx.yml
```
Install dotfiles:

**WARNING**: This installs an authorized_keys file. Replace dotfiles with your own.
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/dotfiles.sh | bash
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

### OS Specific

Run OS specific playbook.
* https://github.com/andrewtchin/ansible-ubuntu
* https://github.com/andrewtchin/ansible-osx



## VMware VIC development

1. Installs vim, emacs, development tools, docker, docker-compose, go, govc

   ```shell
   curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-vmware.sh | bash
   ```

2. Clone development repos (replace with own VIC fork)  

   ```shell
   git clone git@github.com:andrewtchin/vic.git ~/go/src/github.com/vmware/vic
   git clone git@github.com:vmware/govmomi.git ~/go/src/github.com/vmware/govmomi
   ```

3. Install dotfiles from repo or install plain zshrc from this repo

   ```shell
   curl -Lo ~/.zshrc https://raw.githubusercontent.com/andrewtchin/ansible-common/master/zshrc
   ```
