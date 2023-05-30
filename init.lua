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
require('neovide.config')

vim.wo.fillchars='eob: '

-- Change error signs
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- It's repeated as sometimes the one prior to this does not work
vim.cmd([[set fcs=eob:\ ]])

-- Set background accordingly to how neovim has been started
if vim.g.started_by_firenvim or vim.g.neovide then
	vim.o.laststatus = 0
else
	vim.o.laststatus = 2
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end



