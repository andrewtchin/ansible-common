echo "Install Homebrew"
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo mkdir -p /usr/local/homebrew
sudo git clone https://github.com/Homebrew/brew.git /usr/local/homebrew

echo "Install Python"
brew install python
