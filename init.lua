local keymap = vim.keymap.set
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


-- Change error signs
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

-- It's repeated as sometimes the one prior to this does not work
vim.wo.fillchars='eob: '
vim.cmd([[set fcs=eob:\ ]])

-- Set background accordingly to how neovim has been started
if vim.g.started_by_firenvim or vim.g.neovide then
	vim.o.laststatus = 0
else
	vim.o.laststatus = 2
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

-- allow error message to show properly

-- prevent keys being overwritten 
-- require('lazy').setup(require('plugins.


-- lualine
require('lualine').setup {
  sections = {
    lualine_a = {
      { 'mode', fmt = function(str) return str:sub(1,1) end }
    },
  }
}


-- it was getting overwritten by something and im lazy so...
-- keymap('n', '<C-t>', '<cmd>ToggleTerm size=19<cr>')
