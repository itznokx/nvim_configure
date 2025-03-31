-- Ensure packer is installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end
local load_packer = ensure_packer()
-- Set general clipboard
vim.cmd("set clipboard+=unnamedplus")
  -- Start init config lua
if (ensure_packer==false) then
	print("Packer not installed run ./config.sh")
else
	require ("nokx")
  -- Update all plugins
  vim.cmd("PackerInstall")
  vim.cmd("PackerSync")
  vim.opt.laststatus=2
  vim.opt.showtabline=2
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
  -- optionally enable 24-bit colour
  vim.opt.termguicolors = true
  -- Nvim-tree require with config
  require("nvim-tree").setup({
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
  })
end
