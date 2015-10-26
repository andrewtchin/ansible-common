echo "Update python"
sudo apt-get upgrade -y python

echo "Installing Ansible."
sudo apt-get install -y python-pip
sudo pip install ansible

echo "Installing git."
sudo apt-get install -y git
