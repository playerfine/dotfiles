local jsFiles =
  { "javascript", "javascriptreact", "typescript", "typescriptreact" }
local jsLinter = { "eslint_d" }
local ft_configs = {}

for _, value in pairs(jsFiles) do
  ft_configs[value] = jsLinter
end

require("lint").linters_by_ft = ft_configs

vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
