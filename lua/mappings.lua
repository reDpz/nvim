vim.g.mapleader = " "
local keymap = vim.keymap.set
keymap("n", ";", ":")
keymap("n", "j", "gj")
keymap("n", "k", "gk")
keymap("n", "|", "<cmd>split<CR>")
keymap("n", "\\", "<cmd>vs<CR>")

-- switch between buffers
keymap('n', '[b', '<cmd>bp<CR>', { desc = "Previous buffer" })
keymap('n', ']b', '<cmd>bn<CR>')
keymap('n', 'q', '<cmd>bd<CR>')


keymap('i', '<C-Tab>', '<cmd>bn<CR>')
keymap('n', '<C-Tab>', '<cmd>bn<CR>')
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

-- code lens
keymap("n", "<leader>cld", "<Cmd>lua vim.lsp.codelens.refresh()<CR>")
keymap("n", "<leader>clr", "<Cmd>lua vim.lsp.codelens.run()<CR>")

-- format
keymap("n", "<leader>f", "<Cmd>LspZeroFormat<CR>")

-- -- move down and up with with alt+j/k
-- keymap('i', '<A-j>', '<Down>')
-- keymap('i', '<A-k>', '<Up>')
--
-- -- move left/right with alt+h+l
-- keymap('i', '<A-l>', '<Right>')
-- keymap('i', '<A-h>', '<Left>')

-- The reason as to why I use these is because I have a 60% keyboard, and I like it. Sometimes I might want to go up or down without exiting insert mode so therefore I would use alt + hjkl but then that would put me into normal mode.

-- opens nvim-tree
keymap('n', '<C-e>', '<cmd>NvimTreeToggle<CR>')
keymap('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

-- Show highlight group
keymap('n', '<leader>his', '<cmd>so $VIMRUNTIME/syntax/hitest.vim<CR>')
keymap('i', '<C-.>', '<cmd>Lspsaga code_action<CR>')
keymap('n', '.', '<cmd>Lspsaga code_action<CR>')

-- tmux navigation in insert

keymap('n', '<leader>l', '<cmd>TroubleToggle<cr>')
keymap('n', '<leader>t', '<cmd>TodoTelescope<cr>')
keymap('n', '<leader>cs', '<cmd>Telescope colorscheme<cr>')
keymap('n', '<leader>s', '<cmd>Telescope treesitter<cr>')

-- Color picker
local opts = { noremap = true, silent = true }

-- vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
-- vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)

keymap("n", "<leader>gt", "<cmd>Gitsigns toggle_linehl<CR> <BAR> <cmd> Gitsigns toggle_current_line_blame<CR>", opts)

-- Lspsaga
keymap('n', 'gd', '<cmd>Lspsaga goto_definition<CR>')
keymap('n', 'gD', '<cmd>Lspsaga peek_definition<CR>')
keymap({ 'n', 't', 'i' }, '<C-p>', '<cmd>Lspsaga term_toggle<CR>')
keymap('n', 'r', '<cmd>Lspsaga rename<CR>')
keymap({ 'n', 'i' }, '<C-n>', '<cmd>Lspsaga hover_doc<CR>')
-- keymap('n', '<S-Tab>', '<cmd>Lspsaga outline<CR>')
--
-- Outline
keymap("n", "<S-Tab>", "<cmd>Outline<CR>", { desc = "Toggle Outline" })


-- diagnostics lspsaga
keymap('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
keymap('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<CR>')


-- dap

keymap('n', '<leader>db', '<cmd>DapToggleBreakpoint<CR>')
keymap('n', '<leader>dr', '<cmd>DapContinue<CR>')
keymap('n', '<leader>dc', '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Condition: "))<CR>')
keymap('n', '<leader>dt', '<cmd>DapTerminate<CR>')

-- zen mode
keymap('n', '<leader>z', '<cmd>ZenMode<CR>')
