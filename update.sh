cp $PWD/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
cp -r $PWD/nvim/* $HOME/.config/nvim/
cp $PWD/tmux/tmux.conf $HOME/.tmux.conf

source $HOME/.zshrc
source $HOME/.p10k.zsh

tmux source ~/.tmux.conf

echo "Update Done!"
