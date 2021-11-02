--global
local o = vim.o

--window local
local wo = vim.wo

--buffer-local
local bo = vim.bo


vim.g.mapleader = ' ';

vim.g.netrw_banner = 1;
vim.g.netrw_browse_split = 4;
vim.g.netrw_liststyle = 3;
vim.g.netrw_altv = 1;
vim.g.netrw_winsize = 25;

vim.cmd([[
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * : Lexplore
augroup END
]])



wo.number = true;
wo.relativenumber = true;

o.smartcase = true;
o.hidden = true;
o.laststatus = 2;
o.hlsearch = true;
o.incsearch = true;
o.ignorecase = true;
o.scrolloff = 8;
o.termguicolors = true;


bo.expandtab = true;
bo.tabstop = 2;
bo.softtabstop = 2;
bo.shiftwidth = 2;
