# Configure shell script (AUTO INSTALL PLUGINS)

# First of all: PACKER
echo "Copying packer repo" 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Install ripgrep"
sudo pacman -S ripgrep

echo "Sync Packer plugins"
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall'
