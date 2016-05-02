echo "Update python"
sudo apt-get upgrade -y python

echo "Install python-dev"
sudo apt-get install -y python-dev

echo "Install Ansible dependencies"
sudo apt-get install -y python-pip python-cffi
sudo pip install paramiko PyYAML Jinja2 httplib2 six
sudo pip install markupsafe pycrypto

echo "Installing git."
sudo apt-get install -y git
