cd $HOME

echo "Update package indexes"
sudo apt-get update

echo "Bootstrap"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | sh

echo "Install devel Ansible"
sudo apt-get install -y python-pip
sudo pip install paramiko PyYAML Jinja2 httplib2 six
git clone git://github.com/ansible/ansible.git --recursive
source ansible/hacking/env-setup

echo "Clone ansible-common"
ANSIBLE_COMMON_DIR="$HOME/ansible-common"
if [ -d "$ANSIBLE_COMMON_DIR" ]; then
  rm -rf $ANSIBLE_COMMON_DIR
fi
git clone https://github.com/andrewtchin/ansible-common.git $ANSIBLE_COMMON_DIR

echo "Clone ansible-ubuntu"
ANSIBLE_UBUNTU_DIR="$HOME/ansible-ubuntu"
if [ -d "$ANSIBLE_UBUNTU_DIR" ]; then
  rm -rf $ANSIBLE_UBUNTU_DIR
fi
git clone https://github.com/andrewtchin/ansible-ubuntu.git $ANSIBLE_UBUNTU_DIR

cd $ANSIBLE_COMMON_DIR
echo "Run ansible-common"
ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass -c local

cd $ANSIBLE_UBUNTU_DIR
echo "Run ansible-ubuntu"
ansible-playbook -vvv playbooks/ubuntu-server.yml --ask-sudo-pass -c local --extra-vars=@vars/ubuntu.json

echo "Install dotfiles"
DOTFILES_DIR="$HOME/.dotfiles"
if [ -d "$DOTFILES_DIR"  ]; then
      rm -rf $DOTFILES_DIR
fi
git clone https://github.com/andrewtchin/dotfiles.git $DOTFILES_DIR --recursive
RCRC="$HOME/.dotfiles/rcrc" rcup

echo "Install complete"
