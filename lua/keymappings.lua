vim.api.nvim_set_keymap('n', '<c-b>', ':Lexplore<CR>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>lua require("telescope.builtin").lsp_references()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fp', '<cmd>lua require("telescope.builtin").file_browser()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>df', '<cmd>lua require("telescopes").search_dotfiles()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>af', '<cmd>lua require("harpoon.mark").add_file()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>mf', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>2', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', {noremap = true});
vim.api.nvim_set_keymap('n', '<leader>4', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>', {noremap = true});


