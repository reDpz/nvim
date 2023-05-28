-- termgui
vim.opt.termguicolors = true

-- file tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config")
require("mappings")

-- lazy nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("plugconfig.treesitter")
require("plugconfig.zero")
require('plugconfig.cmp')

require("colours")

if vim.g.started_by_firenvim == true then
	vim.o.laststatus = 0
else
	vim.o.laststatus = 2
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
