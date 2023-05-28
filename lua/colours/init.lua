-- transparent background
vim.cmd([[
colorscheme gruvbox
set cursorline
]])

vim.wo.fillchars='eob: '

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#7c6f64", bg = "#3c3836" })
