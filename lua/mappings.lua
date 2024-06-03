vim.g.mapleader = " "
local keymap = vim.keymap.set
keymap("n", ";", ":", { desc = "Go into command mode" })
keymap("n", "j", "gj")
keymap("n", "k", "gk")
keymap("n", "|", "<cmd>split<CR>", { desc = "split horizontally" })
keymap("n", "\\", "<cmd>vs<CR>", { desc = "split vertically" })

-- switch between buffers
keymap("n", "[b", "<cmd>bp<CR>", { desc = "Previous buffer" })
keymap("n", "]b", "<cmd>bn<CR>", { desc = "Next buffer" })
keymap("n", "q", "<cmd>bd<CR>", { desc = "Close buffer" })

keymap({ "n", "i" }, "<C-Tab>", "<cmd>bn<CR>", { desc = "Next buffer" })
keymap({ "n", "i" }, "<C-S-Tab>", "<cmd>bp<CR>", { desc = "Previous buffer" })

-- save current file
keymap("i", "<C-s>", "<cmd>wa<CR>", { desc = "Save file" })
keymap("n", "<C-s>", "<cmd>wa<CR>", { desc = "Save file" })

-- exit
keymap({ "n", "i" }, "<C-x>", "<cmd>q<CR>", { desc = "Quit" })

-- write quit
keymap({ "n", "i" }, "<C-q>", "<cmd>wq<CR>", { desc = "Write quit" })

-- force exit
keymap({ "n", "i" }, "<A-q>", "<cmd>q!<CR>", { desc = "Force quit" })

-- write file
keymap("n", "ZW", "<cmd>wa<CR>", { desc = "Write file" })

-- code lens
keymap("n", "<leader>cld", "<Cmd>lua vim.lsp.codelens.refresh()<CR>", { desc = "Refresh code lens" })
keymap("n", "<leader>clr", "<Cmd>lua vim.lsp.codelens.run()<CR>", { desc = "Run code lens" })

-- format
keymap("n", "<leader>fm", "<Cmd>LspZeroFormat<CR>", { desc = "Format" })

-- -- move down and up with with alt+j/k
-- keymap('i', '<A-j>', '<Down>')
-- keymap('i', '<A-k>', '<Up>')
--
-- -- move left/right with alt+h+l
-- keymap('i', '<A-l>', '<Right>')
-- keymap('i', '<A-h>', '<Left>')

-- The reason as to why I use these is because I have a 60% keyboard, and I like it. Sometimes I might want to go up or down without exiting insert mode so therefore I would use alt + hjkl but then that would put me into normal mode.

-- opens nvim-tree
keymap("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", { desc = "Open nvim tree" })
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Open nvim tree" })

-- Show highlight group
keymap("n", "<leader>his", "<cmd>so $VIMRUNTIME/syntax/hitest.vim<CR>", { desc = "Show highlight groups" })
keymap("i", "<C-.>", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" })
keymap("n", ".", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" })

-- tmux navigation in insert

keymap("n", "<leader>pt", "<cmd>TroubleToggle<cr>", { desc = "Toggle problems" })
keymap("n", "<leader>t", "<cmd>TodoTelescope<cr>", { desc = "Search todo" })
keymap("n", "<leader>cs", "<cmd>Telescope colorscheme<cr>", { desc = "Search colour schemes" })
keymap("n", "<leader>s", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Search symbols" })
keymap("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", { desc = "Search references" })
keymap("n", "<leader><leader>", "<cmd>Telescope<cr>", { desc = "Telescope search" })

-- Color picker
local opts = { noremap = true, silent = true }

-- vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
-- vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)

-- git utils
keymap("n", "<leader>gt", "<cmd>Gitsigns toggle_linehl<CR> <BAR> <cmd> Gitsigns toggle_current_line_blame<CR>", opts)
keymap(
	"n",
	"<leader>lg",
	'<cmd>lua require("lazy.util").float_term("lazygit")<CR>',
	{ desc = "Open lazy git (in current directory)" }
)

-- Lspsaga
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Go to definition (LspSaga)" })
keymap("n", "gD", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peak definition (LspSaga)" })
keymap({ "n", "t", "i" }, "<C-p>", "<cmd>Lspsaga term_toggle<CR>", { desc = "Toggle floating terminal (LspSaga)" })
keymap("n", "r", "<cmd>Lspsaga rename<CR>", { desc = "Rename variable (LspSaga)" })
keymap({ "n", "i" }, "<C-n>", "<cmd>Lspsaga hover_doc<CR>", { desc = "Show hover doc (LspSaga)" })
-- keymap('n', '<S-Tab>', '<cmd>Lspsaga outline<CR>')
--
-- Outline
keymap("n", "<S-Tab>", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

-- diagnostics lspsaga
keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Previous diagnostic" })
keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next diagnostic" })

-- dap

-- keymap('n', '<leader>d', {desc = "Debug"})
keymap("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Set a breakpoint" })
keymap("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start/resume debugger" })
keymap(
	"n",
	"<leader>dc",
	'<cmd>lua require("dap").set_breakpoint(vim.fn.input("Condition: "))<CR>',
	{ desc = "Set a conditional breakpoint" }
)
keymap("n", "<leader>dt", "<cmd>DapTerminate<CR>", { desc = "Terminate debugger" })

-- zen mode
keymap("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Toggle zen mode" })
