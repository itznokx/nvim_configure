local mark = require("harpoon.mark")
local ui = require ("harpoon.ui")
vim.g.mapleader = " " 
vim.keymap.set('n','<M-n>', mark.add_file)
vim.keymap.set('n','<leader>hh',ui.toggle_quick_menu)

vim.keymap.set('n','<S-PageUp>', function() ui.nav_next() end)
vim.keymap.set('n','<S-PageDown>', function() ui.nav_prev() end)
