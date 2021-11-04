require('plugins');
require('settings');
require('statusline');
require('keymappings');
require('telescopes');


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require'lspconfig'.tsserver.setup{}



