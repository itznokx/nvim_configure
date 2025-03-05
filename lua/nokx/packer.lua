-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
 use 'wbthomason/packer.nvim'
  -- Plenary needed to telescope
 use {'nvim-lua/plenary.nvim'}
 -- Telescope plugin
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
 use {
	 'nvim-treesitter/nvim-treesitter',
	 run = function()
		 local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		 ts_update()
	 end,
 }
 use {'nvim-treesitter/playground'}
 use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
-- Color representation for HEX CODES
use("catgoose/nvim-colorizer.lua")
-- Transparent Backgrounds
use {"xiyaowong/transparent.nvim"}
-- Nvim Themes
use { "zootedb0t/citruszest.nvim"} -- Citruszest
use { "scottmckendry/cyberdream.nvim" } -- Cyberdream
-- Status Line
use {'tamton-aquib/staline.nvim'}
--[[
use { "scottmckendry/cyberdream.nvim",require("cyberdream").setup({
	transparent=true,
	borderless_telescope=false,
	extensions = {
		telescope=true,
		treesitter=true,
	}
})
} 
]]-- 
-- Cyberdream

 end)
--hype

