vim.api.nvim_set_keymap('n', '<c-b>', ':Lexplore<CR>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>lua require("telescope.builtin").lsp_references()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fp', '<cmd>lua require("telescope.builtin").file_browser()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>df', '<cmd>lua require("telescopes").search_dotfiles()<cr>', {noremap = true});


