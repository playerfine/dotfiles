--global
local o = vim.o

--window local
local wo = vim.wo

--buffer-local
local bo = vim.bo

vim.g.mapleader = " "

wo.number = true
wo.relativenumber = true

o.smartcase = true
o.hidden = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 8
o.termguicolors = true

o.expandtab = true
o.smartindent = true
o.autoindent = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.signcolumn = "yes"
o.cursorline = true
vim.cmd([[set cc=80]])
