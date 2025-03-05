vim.g.mapleader = " "
vim.keymap.set("n","<leader>ee", vim.cmd.NvimTreeOpen)
vim.keymap.set("n","<C-w>e",vim.cmd.NvimTreeClose)
vim.keymap.set('n','<C-s>', vim.cmd.w)
vim.keymap.set('i','<C-v>','<C-R><Char-43>')

vim.keymap.set('n','<leader>jj','o')

vim.keymap.set('n','<C-w><Esc>',':q<Enter>')

vim.keymap.set('n','<C-f>','/') -- find word

vim.keymap.set('v','<C-x>','d') -- Cut in visual mode
vim.keymap.set('v','<C-c>','y') -- copy in visual mode
vim.keymap.set('n','<leader>vv','p') -- paste in normal mode

vim.keymap.set('n','<C-z>','u') -- Undo
vim.keymap.set('n','<S-z>','<C-R>') -- Redo
-- Resize Window
vim.keymap.set("n", "+", [[<cmd>vertical resize +5<cr>]]) 
vim.keymap.set("n", "_", [[<cmd>vertical resize -5<cr>]]) 
vim.keymap.set("n", "=", [[<cmd>horizontal resize +2<cr>]]) 
vim.keymap.set("n", "-", [[<cmd>horizontal resize -2<cr>]])

-- Multi Window configuration
vim.keymap.set('n','<M-PageUp>','<C-w>w') -- Next 
vim.keymap.set('n','<M-PageDown>','<C-w>p') -- Previous Window

vim.keymap.set('n','<M-Up>','<C-w>k') -- Window above
vim.keymap.set('n','<M-Down>','<C-w>j') -- Window below
vim.keymap.set('n','<M-Left>','<C-w>h') -- Window Left
vim.keymap.set('n','<M-Right>','<C-w>l') -- WIndow Right

vim.keymap.set('n','<C-Left>','<C-w>R') -- Move actual Win backwards
vim.keymap.set('n','<C-Right>','<C-w>r') -- Move actual Win frontward

vim.keymap.set('n','<S-t>', vim.cmd.terminal) -- open terminal
vim.keymap.set('t','<Esc>','<C-Char-92><C-N>') -- exit terminal mode

-- move lines (insert and normal mode)
vim.keymap.set('i','<s-up>',[[<cmd>move -2<cr>]]) -- up line (insert mode)
vim.keymap.set('i','<S-Down>',[[<cmd>move +1<cr>]]) --Down line (insert mode)
vim.keymap.set('n','<s-up>',[[<cmd>move-2<cr>]]) -- up line (normal mode)
vim.keymap.set('n','<S-Down>',[[<cmd>move +1<cr>]]) -- Down line (normal mode)

vim.keymap.set('i','<C-j>','<C-O>o')

vim.keymap.set('n','<leader>tt',[[<cmd>TransparentToggle<cr>]])
