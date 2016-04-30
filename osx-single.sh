cd $HOME

echo "Install Xcode"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap-xcode.sh | sh

echo "Bootstrap"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap.sh | sh

echo "Install devel Ansible"
sudo easy_install pip
sudo pip install paramiko PyYAML Jinja2 httplib2 six
git clone https://github.com/ansible/ansible.git --recursive
source ansible/hacking/env-setup

echo "Clone ansible-osx"
ANSIBLE_OSX_DIR="$HOME/ansible-osx"
if [ -d "$ANSIBLE_OSX_DIR" ]; then
  rm -rf $ANSIBLE_OSX_DIR
fi
git clone https://github.com/andrewtchin/ansible-osx.git $ANSIBLE_OSX_DIR

cd $ANSIBLE_OSX_DIR
echo "Run ansible-osx"
ansible-playbook -vvv playbooks/osx-preinstall.yml --ask-sudo-pass --extra-vars=@vars/osx.yml
ansible-playbook -vvv playbooks/osx.yml --ask-sudo-pass --extra-vars=@vars/osx.yml

echo "Remove gpg.conf for dotfiles"
rm -f $HOME/.gnupg/gpg.conf

echo "Install dotfiles"
DOTFILES_DIR="$HOME/.dotfiles"
if [ -d "$DOTFILES_DIR" ]; then
  rm -rf $DOTFILES_DIR
fi
git clone https://github.com/andrewtchin/dotfiles.git $DOTFILES_DIR --recursive
RCRC="$DOTFILES_DIR/rcrc" rcup

echo "Install complete"
