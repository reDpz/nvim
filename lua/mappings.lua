vim.g.mapleader = " "
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "|", ":split\n")
vim.keymap.set("n", "\\", ":vs\n")

-- write file
vim.keymap.set("n", "ZW", ":wa\n")


-- opens nvim-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle\n')
