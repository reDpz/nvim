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


keymap('i', '<C-Tab>', '<cmd>bN<CR>')
keymap('n', '<C-Tab>', '<cmd>bN<CR>')
keymap('i', '<C-S-Tab>', '<cmd>bp<CR>')
keymap('n', '<C-S-Tab>', '<cmd>bp<CR>')

-- save current file
keymap('i', '<C-s>', '<cmd>wa<CR>')
keymap('n', '<C-s>', '<cmd>wa<CR>')

-- exit
keymap('n', '<C-x>', '<cmd>q<CR>')
keymap('i', '<C-x>', '<cmd>q<CR>')

-- write quit
keymap('n', '<C-q>', '<cmd>wq<CR>')
keymap('i', '<C-q>', '<cmd>wq<CR>')

-- force exit
keymap('n', '<A-q>', '<cmd>q!<CR>')
keymap('i', '<A-q>', '<cmd>q!<CR>')

-- write file
keymap("n", "ZW", "<cmd>wa<CR>")

-- -- move down and up with with alt+j/k
-- keymap('i', '<A-j>', '<Down>')
-- keymap('i', '<A-k>', '<Up>')
--
-- -- move left/right with alt+h+l
-- keymap('i', '<A-l>', '<Right>')
-- keymap('i', '<A-h>', '<Left>')

-- The reason as to why I use these is because I have a 60% keyboard, and I like it. Sometimes I might want to go up or down without exiting insert mode so therefore I would use alt + hjkl but then that would put me into normal mode.

-- opens nvim-tree
keymap('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

-- Show highlight group
keymap('n', '<leader>his', '<cmd>so $VIMRUNTIME/syntax/hitest.vim<CR>')
keymap('i', '<C-.>', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap('n', '.', '<cmd>lua vim.lsp.buf.code_action()<CR>')

-- tmux navigation in insert

keymap('n', '<leader>l', '<cmd>TroubleToggle<cr>')

