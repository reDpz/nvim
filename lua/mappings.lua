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

-- write file
keymap("n", "ZW", "<cmd>wa<CR>")

-- move forward (similar to tabout)
-- keymap('i', '<S-Tab>', '<ESC-la>')


-- opens nvim-tree
keymap('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

-- Show highlight group
keymap('n', '<leader>his', '<cmd>so $VIMRUNTIME/syntax/hitest.vim<CR>')
