# ansible-common

Scripts to run Ansible on OSX or Ubuntu


-----

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


-----

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


-----

## VMware VIC development

### Prepare

Create an Ubuntu VM. Recommended minimum sizing is 2 vCPU and 4 GB RAM and 80 GB storage.

### Run

Run the following commands:

1. Installs vim, emacs, development tools, docker, docker-compose, go, govc, drone cli, robot framework,
   delve, packer, asciinema, Google Cloud SDK, cfssl, ShellCheck, changes shell to ZSH

   NOTE: Docker 1.13 client is at `/usr/local/bin/docker/docker`. Latest Docker is installed in
   `/usr/bin`. You may alias the pinned Docker client if you use that more frequently.
   
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

4. Make sure you have forked the [VIC repo](https://github.com/vmware/vic) on Github and added a SSH
   key to your Github account

5. Add your Github SSH key to clone repos

   ```shell
   ssh-add ~/.ssh/id_rsa
   ```

5. Clone development repos (prompts for your Github username to get your VIC fork)

   ```shell
   bash <(curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/vmware-repos.sh)
   ```

6. Optional: Install `ovftool` if desired. https://www.vmware.com/support/developer/ovf/

   ```shell
   chmod +x VMware-ovftool-4.2.0-4586971-lin.x86_64.bundle
   sudo ./VMware-ovftool-4.2.0-4586971-lin.x86_64.bundle 
   ```
