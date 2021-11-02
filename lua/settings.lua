--global
local o = vim.o

--window local
local wo = vim.wo

--buffer-local
local bo = vim.bo


vim.g.mapleader = ' ';

wo.number = true;
wo.relativenumber = true;

o.smartcase = true;
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
