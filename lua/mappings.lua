vim.g.mapleader = " "
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- write file
vim.keymap.set("n", "ZW", ":wa\n")


-- opens nvim-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle\n')
