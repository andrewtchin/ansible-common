echo "Update python"
sudo apt-get upgrade -y python

echo "Install python-dev"
sudo apt-get install -y python-dev

echo "Install Ansible dependencies"
sudo apt-get install -y python-pip
sudo pip install markupsafe pyyaml jinja2

echo "Installing git."
sudo apt-get install -y git
