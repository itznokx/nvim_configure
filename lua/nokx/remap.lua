vim.g.mapleader = " "
vim.keymap.set("n","<leader>ee", vim.cmd.Ex)
vim.keymap.set('n','<C-s>', vim.cmd.w)
vim.keymap.set('i','<C-v>','<C-R><Char-43>')

vim.keymap.set('n','<C-kEnter>','o')

vim.keymap.set('n','<Esc><Esc>',':q')

vim.keymap.set('n','<C-f>','/') -- find word

vim.keymap.set('v','<C-x>','d')-- Cut in visual mode
vim.keymap.set('v','<C-c>','y')-- copy in visual mode

vim.keymap.set('n','<C-z>','u') -- Undo
vim.keymap.set('n','<S-z>','<C-R>') -- Redo
-- Multi Window configuration

vim.keymap.set('n','<M-PageUp>','<C-w>w') -- Next Window
vim.keymap.set('n','<M-PageDown>','<C-w>p') -- Previous Window

vim.keymap.set('n','<M-Up>','<C-w>k') -- Window above
vim.keymap.set('n','<M-Down>','<C-w>j') -- Window below
vim.keymap.set('n','<M-Left>','<C-w>h') -- Window Left
vim.keymap.set('n','<M-Right>','<C-w>l') -- WIndow Right

vim.keymap.set('n','<C-Left>','<C-w>R') -- Move actual Win backwards
vim.keymap.set('n','<C-Right>','<C-w>r') -- Move actual Win frontward
