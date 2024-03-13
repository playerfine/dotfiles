-- Formatter Configuration
require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    lua = { "stylua" },
    vue = { "prettierd" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = false,
  },
})
