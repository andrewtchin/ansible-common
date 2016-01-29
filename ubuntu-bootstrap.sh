echo "Update python"
sudo apt-get upgrade -y python

echo "Install python-dev"
sudo apt-get install -y python-dev

# Removed in favor of using devel
# echo "Installing Ansible."
# sudo apt-get install -y python-pip
# sudo pip install ansible markupsafe

echo "Installing git."
sudo apt-get install -y git
