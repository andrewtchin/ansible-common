# ansible-common

Installs python packages.

## Single touch install

#### Ubuntu

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-single.sh | sh
```

#### OS X

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-single.sh | sh
```

## Normal install

### Bootstrap

#### OS X

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap.sh | sh
```

#### Ubuntu

```
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | sh
```

### Run playbook

```
git clone https://github.com/andrewtchin/ansible-common.git
ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass -i inventory
```

### OS Specific Customizations
Follow with OS specific playbook.
