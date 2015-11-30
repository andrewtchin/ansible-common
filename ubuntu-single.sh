cd ~/

echo "Bootstrap Ansible"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | sh

echo "Clone ansible-common"
ANSIBLE_COMMON_DIR="~/ansible-common"
if [ -d "$ANSIBLE_COMMON_DIR" ]; then
  rm -rf $ANSIBLE_COMMON_DIR
fi
git clone https://github.com/andrewtchin/ansible-common.git $ANSIBLE_COMMON_DIR

echo "Clone ansible-ubuntu"
ANSIBLE_UBUNTU_DIR="~/ansible-ubuntu"
if [ -d "$ANSIBLE_UBUNTU_DIR" ]; then
  rm -rf $ANSIBLE_UBUNTU_DIR
fi
git clone https://github.com/andrewtchin/ansible-ubuntu.git $ANSIBLE_UBUNTU_DIR

cd ansible-common
echo "Run ansible-common"
ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass -c local

cd ../ansible-ubuntu
echo "Run ansible-ubuntu"
ansible-playbook -vvv playbooks/ubuntu.yml --ask-sudo-pass -c local --extra-vars=@vars/ubuntu.json

echo "Install dotfiles"
git clone https://github.com/andrewtchin/dotfiles-local.git ~/.dotfiles-local
git clone https://github.com/andrewtchin/dotfiles.git ~/.dotfiles --recursive
RCRC="$HOME/.dotfiles/rcrc" rcup

echo "Install complete"
