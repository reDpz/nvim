vim.cmd([[
set clipboard=unnamedplus
set cmdheight=0
set splitright
set splitbelow
" set numberwidth=1
set breakindent " when having lines that go across multiple lines and they are indented, instead of the lines starting all the way to the left they will start at the appropriate indentation

" example of breakindent
    " dawJDLKAJJJJJJJJJJJJJJJJJJJJjjjjjjjjj jjjjjjjjjjjjJJJJJJJJJJJJJJJjjjjjjjjjjjjJ JJJJJJ JJJJ jjjjjj jjjjjjjjjjJ JJJJjjjjjjjjJJJjjjJjjjJJJjjjJJjjJJJjjjjjjjjjjjJJjjJJjjJJjjJJjjJJjjjjjjjjjj

set foldenable 
set ignorecase " when searching for something it ignores the case
set undofile " remember changes across sessions

" indentation
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=3
]])


-- allows for folding headers in markdown
vim.g.markdown_folding = 1

-- show line numbers
vim.o.number = true;
vim.o.relativenumber = true;

vim.o.linebreak = true;


-- automatically change the directory
vim.o.autochdir=true

-- show only on statusline for all splits
vim.o.laststatus = 3

if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.cmd([[set shell=C:\msys64\shellnvim.cmd]])
end


local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.api.nvim_create_user_command
local namespace = vim.api.nvim_create_namespace

local view_group = augroup("auto_view", { clear = true })
autocmd({ "BufWinLeave", "BufWritePost", "WinLeave" }, {
  desc = "Save view with mkview for real files",
  group = view_group,
  callback = function(args)
    if vim.b[args.buf].view_activated then vim.cmd.mkview { mods = { emsg_silent = true } } end
  end,
})
autocmd("BufWinEnter", {
  desc = "Try to load file view if available and enable view saving for real files",
  group = view_group,
  callback = function(args)
    if not vim.b[args.buf].view_activated then
      local filetype = vim.api.nvim_get_option_value("filetype", { buf = args.buf })
      local buftype = vim.api.nvim_get_option_value("buftype", { buf = args.buf })
      local ignore_filetypes = { "gitcommit", "gitrebase", "svg", "hgcommit" }
      if buftype == "" and filetype and filetype ~= "" and not vim.tbl_contains(ignore_filetypes, filetype) then
        vim.b[args.buf].view_activated = true
        vim.cmd.loadview { mods = { emsg_silent = true } }
      end
    end
  end,
})
