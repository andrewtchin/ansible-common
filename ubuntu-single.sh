echo "Bootstrap Ansible"
curl -L https://raw.githubusercontent.com/andrewtchin/ansible-common/master/ubuntu-bootstrap.sh | sh
echo "Clone ansible-common"
git clone https://github.com/andrewtchin/ansible-common.git
echo "Clone ansible-ubuntu"
git clone https://github.com/andrewtchin/ansible-ubuntu.git

cd ansible-common
echo "Run ansible-common"
ansible-playbook -vvv playbooks/common.yml --ask-sudo-pass -i inventory
echo "Run ansible-ubuntu"
ansible-playbook -vvv playbooks/ubuntu.yml --ask-sudo-pass --extra-vars=@vars/deploy_vars.json
echo "Install dotfiles"
