echo "Install Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install Python"
brew install python

echo "Installing Ansible."
pip install ansible
