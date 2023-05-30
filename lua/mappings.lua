vim.g.mapleader = " "
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "|", "<cmd>split<CR>")
vim.keymap.set("n", "\\", "<cmd>vs<CR>")

-- write file
vim.keymap.set("n", "ZW", "<cmd>wa<CR>")


-- opens nvim-tree
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')
