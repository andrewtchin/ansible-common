cd $HOME

echo "Bootstrap"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | sh

echo "Install devel Ansible"
git clone https://github.com/ansible/ansible.git --recursive
source ./ansible/hacking/env-setup

echo "Clone ansible-ubuntu"
ANSIBLE_UBUNTU_DIR="$HOME/ansible-ubuntu"
if [ -d "$ANSIBLE_UBUNTU_DIR" ]; then
  rm -rf $ANSIBLE_UBUNTU_DIR
fi
git clone https://github.com/andrewtchin/ansible-ubuntu.git $ANSIBLE_UBUNTU_DIR

cd $ANSIBLE_UBUNTU_DIR
echo "Run ubuntu-desktop"
ansible-playbook -vvv playbooks/ubuntu-desktop.yml --ask-become-pass -c local --extra-vars=@vars/ubuntu.json -i inventory

echo "Run work-vmware"
ansible-playbook -vvv playbooks/work-vmware.yml --ask-become-pass -c local --extra-vars=@vars/ubuntu.json -i inventory

echo "Install complete"
