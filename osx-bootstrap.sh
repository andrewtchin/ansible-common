echo "Install Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install Python"
brew install python@3.8

echo "Install Ansible"
sudo pip3 install ansible