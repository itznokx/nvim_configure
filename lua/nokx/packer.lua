-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
 use 'wbthomason/packer.nvim'
 -- Telescope plugin
 use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
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
 use {'nvim-lua/plenary.nvim'}
 use {'theprimeagen/harpoon',require("harpoon").setup({
 	global_settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = false,

    -- enable tabline with harpoon marks
    tabline = true,
    tabline_prefix = "   ",
    tabline_suffix = "   ",
 			}	
 })}
 use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
-- Nvim Themes
use { "zootedb0t/citruszest.nvim"} -- Citruszest
use { "scottmckendry/cyberdream.nvim",require("cyberdream").setup({
	transparent=true,
	borderless_telescope=false,
	extensions = {
		telescope=true,
		treesitter=true,
	}
})
} -- Cyberdream
 end)
--hype

