echo "Update python"
sudo apt-get upgrade -y python

echo "Install python-dev"
sudo apt-get install -y python-dev

echo "Install Ansible dependencies"
sudo apt-get install -y python-pip
sudo pip install markupsafe

# Removed in favor of using devel
# echo "Installing Ansible."
# sudo pip install ansible markupsafe

# Workaround for https://github.com/ansible/ansible/issues/13867
echo "Uninstall python-cryptography"
sudo apt-get remove -y python-cryptography

echo "Installing git."
sudo apt-get install -y git
