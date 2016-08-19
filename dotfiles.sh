echo "Install dotfiles"
DOTFILES_DIR="$HOME/.dotfiles"
if [ -d "$DOTFILES_DIR" ]; then
  rm -rf $DOTFILES_DIR
fi
git clone https://github.com/andrewtchin/dotfiles.git $DOTFILES_DIR --recursive
RCRC="$DOTFILES_DIR/rcrc" rcup

echo "Install complete"
