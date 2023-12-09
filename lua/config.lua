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
