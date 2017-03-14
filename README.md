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

1. Installs vim, emacs, development tools, docker, docker-compose, go, govc, changes shell to ZSH

   ```shell
   curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-vmware.sh | bash
   ```

2. Install your dotfiles or install this plain zshrc from this repo

   ```shell
   curl -Lo ~/.zshrc https://raw.githubusercontent.com/andrewtchin/ansible-common/master/zshrc
   ```

3. Log out and log back in

   ```shell
   gnome-session-quit --no-prompt
   ```

4. Make sure you have forked the [VIC repo](https://github.com/vmware/vic) on Github

5. Add your Github SSH key to clone repos

   ```shell
   ssh-add ~/.ssh/id_rsa
   ```

5. Clone development repos (prompts for your Github username to get your VIC fork)

   ```shell
   bash <(curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/vmware-repos.sh)
   ```
