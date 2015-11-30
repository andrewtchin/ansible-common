echo "Bootstrap Ansible"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/osx-bootstrap.sh | sh
echo "Clone ansible-common"
git clone https://github.com/andrewtchin/ansible-common.git
echo "Clone ansible-osx"
git clone https://github.com/andrewtchin/ansible-osx.git

cd ansible-common
echo "Run ansible-common"
ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass -c local

cd ../ansible-osx
echo "Run ansible-osx"
ansible-playbook -vvv playbooks/osx-preinstall.yml --ask-sudo-pass --extra-vars=@vars/osx.yml
ansible-playbook -vvv playbooks/osx.yml --ask-sudo-pass --extra-vars=@vars/osx.yml

echo "Install dotfiles"
git clone https://github.com/andrewtchin/dotfiles-local.git ~/.dotfiles-local
git clone https://github.com/andrewtchin/dotfiles.git ~/.dotfiles --recursive
RCRC="$HOME/.dotfiles/rcrc" rcup
echo "Install complete"
