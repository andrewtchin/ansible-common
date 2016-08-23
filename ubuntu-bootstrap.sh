echo "Update package indexes"
sudo apt update

echo "Update python"
sudo apt upgrade -y python

echo "Install Ansible dependencies"
sudo apt install -y build-essential libssl-dev libffi-dev python-dev
sudo apt install -y python-pip python-cffi
sudo pip install paramiko PyYAML Jinja2 httplib2 six
sudo pip install markupsafe pycrypto

echo "Installing git."
sudo apt install -y git
