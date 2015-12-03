cd $HOME

echo "Install Xcode"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap-xcode.sh | sh

echo "Install Ansible"
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
t
echo "Remove gpg.conf for dotfiles"
rm -f $HOME/.gnupg/gpg.conf

echo "Install dotfiles"
DOTFILES_LOCAL_DIR="$HOME/.dotfiles-local"
if [ -d "$DOTFILES_LOCAL_DIR" ]; then
  rm -rf $DOTFILES_LOCAL_DIR
fi
git clone https://github.com/andrewtchin/dotfiles-local.git $DOTFILES_LOCAL_DIR

DOTFILES_DIR="$HOME/.dotfiles"
if [ -d "$DOTFILES_DIR" ]; then
  rm -rf $DOTFILES_DIR
fi
git clone https://github.com/andrewtchin/dotfiles.git $DOTFILES_DIR --recursive
RCRC="$DOTFILES_DIR/rcrc" rcup

echo "Install complete"
