#!/bin/bash
echo "Sync Packer plugins"
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall'
