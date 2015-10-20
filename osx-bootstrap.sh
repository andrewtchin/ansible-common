echo "Installing Ansible."
sudo easy_install pip
sudo pip install ansible

echo "Installing Xcode"
curl -Lo /tmp/xcode-cli-tools.sh https://raw.githubusercontent.com/andrewtchin/ansible-osx/master/scripts/xcode-cli-tools.sh
chmod +x /tmp/xcode-cli-tools.sh
sudo /tmp/xcode-cli-tools.sh
