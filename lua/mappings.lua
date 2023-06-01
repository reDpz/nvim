vim.g.mapleader = " "
local keymap = vim.keymap.set
keymap("n", ";", ":")
keymap("n", "j", "gj")
keymap("n", "k", "gk")
keymap("n", "|", "<cmd>split<CR>")
keymap("n", "\\", "<cmd>vs<CR>")

-- switch between buffers
keymap('n', '[b', '<cmd>bp<CR>')
keymap('n', ']b', '<cmd>bN<CR>')
keymap('n', 'q', '<cmd>bd<CR>')

-- save current file
keymap('i', '<C-s>', '<cmd>wa<CR>')
keymap('n', '<C-s>', '<cmd>wa<CR>')

-- exit
keymap('i', '<C-x>', '<cmd>q<CR>')
keymap('n', '<C-x>', '<cmd>q<CR>')
-- force exit
keymap('n', '<C-S-x>', '<cmd>q!<CR>')
keymap('i', '<C-S-x>', '<cmd>q!<CR>')

-- write file
keymap("n", "ZW", "<cmd>wa<CR>")

-- move down and up with with alt+j/k
keymap('i', '<A-j>', '<Down>')
keymap('i', '<A-k>', '<Up>')
-- The reason as to why I use these is because I have a 60% keyboard, and I like it. Sometimes I might want to go up or down without exiting insert mode so therefore I would use alt + hjkl but then that would put me into normal mode.

-- opens nvim-tree
keymap('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

-- Show highlight group
keymap('n', '<leader>his', '<cmd>so $VIMRUNTIME/syntax/hitest.vim<CR>')
