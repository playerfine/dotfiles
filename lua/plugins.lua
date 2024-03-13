local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  "neovim/nvim-lspconfig",
  "navarasu/onedark.nvim",
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
  },
  { "ellisonleao/gruvbox.nvim", dependencies = { "rktjmp/lush.nvim" } },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  "nvim-telescope/telescope-file-browser.nvim",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "simrat39/rust-tools.nvim",
  "windwp/nvim-autopairs",
  "ThePrimeagen/harpoon",
  { "kyazdani42/nvim-web-devicons" },
  "numToStr/Comment.nvim",
  "catppuccin/nvim",
  "kdheepak/lazygit.nvim",
  "jose-elias-alvarez/typescript.nvim",
  "lewis6991/gitsigns.nvim",
  "github/copilot.vim",
  "stevearc/oil.nvim",
  "JoosepAlviste/nvim-ts-context-commentstring",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "stevearc/conform.nvim",
  "mfussenegger/nvim-lint",
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },
}

require("lazy").setup(plugins, opts)
require("mason").setup()
