# ansible-common

Installs python packages.

## Single touch install

Runs bootstrap, common, and OS specific playbooks. Installs dotfiles.

#### Ubuntu

##### Desktop

Verified on Ubuntu Desktop 14.04.3 and Ubuntu Desktop 15.10 (2016-01-02)
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-desktop.sh | sh
```

##### Server

Verified on Ubuntu Server 14.04.3 and Ubuntu Server 15.10 (2016-01-02)
```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-server.sh | sh
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

### Run playbook

```
git clone https://github.com/andrewtchin/ansible-common.git
ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass -i inventory
```

### OS Specific Customizations

Follow with OS specific playbook.
* https://github.com/andrewtchin/ansible-ubuntu
* https://github.com/andrewtchin/ansible-osx
