cd $HOME

echo "Bootstrap Ansible"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap.sh | sh

echo "Clone ansible-common"
ANSIBLE_COMMON_DIR="$HOME/ansible-common"
if [ -d "$ANSIBLE_COMMON_DIR" ]; then
  rm -rf $ANSIBLE_COMMON_DIR
fi
git clone https://github.com/andrewtchin/ansible-common.git $ANSIBLE_COMMON_DIR

echo "Clone ansible-osx"
ANSIBLE_OSX_DIR="$HOME/ansible-osx"
if [ -d "$ANSIBLE_OSX_DIR" ]; then
  rm -rf $ANSIBLE_OSX_DIR
fi
git clone https://github.com/andrewtchin/ansible-osx.git $ANSIBLE_OSX_DIR

cd $ANSIBLE_COMMON_DIR
echo "Run ansible-common"
ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass -c local

cd $ANSIBLE_OSX_DIR
echo "Run ansible-osx"
ansible-playbook -vvv playbooks/osx-preinstall.yml --ask-sudo-pass --extra-vars=@vars/osx.yml
ansible-playbook -vvv playbooks/osx.yml --ask-sudo-pass --extra-vars=@vars/osx.yml

echo "Install dotfiles"
git clone https://github.com/andrewtchin/dotfiles-local.git ~/.dotfiles-local
git clone https://github.com/andrewtchin/dotfiles.git ~/.dotfiles --recursive
RCRC="$HOME/.dotfiles/rcrc" rcup

echo "Install complete"
