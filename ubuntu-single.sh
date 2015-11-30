echo "Bootstrap Ansible"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | sh
echo "Clone ansible-common"
git clone https://github.com/andrewtchin/ansible-common.git
echo "Clone ansible-ubuntu"
git clone https://github.com/andrewtchin/ansible-ubuntu.git

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
