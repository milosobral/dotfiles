#!/bin/bash

# Install necessary packages
echo "Installing required packages..."
sudo apt update
sudo apt install -y alacritty tmux neovim zsh git unzip curl zoxide htop

# Install fzf for fuzzy finding in the shell
cd $HOME
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install Powerlevel10k theme
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    echo "Installing Powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
fi

# Symlink configuration files
echo "Creating symlinks for configuration files..."
mkdir $HOME/.config/alacritty
mkdir $HOME/.config/nvim
cp $PWD/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
cp -r $PWD/nvim/* $HOME/.config/nvim/
cp $PWD/tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $PWD/zsh/.zshrc $HOME/.zshrc
ln -sf $PWD/.p10k.zsh $HOME/.p10k.zsh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

# Install JetBrainsMono Nerd Font
FONT_DIR="$HOME/.local/share/fonts"
if [ ! -d "$FONT_DIR" ]; then
    mkdir -p $FONT_DIR
fi

echo "Downloading and installing JetBrainsMono Nerd Font..."
curl -fLo "$FONT_DIR/JetBrainsMono-Nerd-Font.ttf" https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip

# Extract the font
unzip "$FONT_DIR/JetBrainsMono-Nerd-Font.ttf" -d $FONT_DIR
rm "$FONT_DIR/JetBrainsMono-Nerd-Font.ttf"

# Refresh font cache
fc-cache -fv

# Set Zsh as the default shell
chsh -s $(which zsh)

echo "Setup complete! Please restart your terminal and set your terminal font to 'JetBrainsMono Nerd Font'."

