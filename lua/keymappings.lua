vim.api.nvim_set_keymap('n', '<c-b>', ':Lexplore<CR>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fp', '<cmd>lua require("telescope.builtin").file_browser()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', {noremap = true});

local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

local opts = { noremap=true, silent=true }

buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
buf_set_keymap('n', 'gl', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)


