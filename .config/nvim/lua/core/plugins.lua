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
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-tree/nvim-tree.lua',
    'nvim-treesitter/nvim-treesitter',
    -- completions
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    -- snippets
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    -- lsp
    {
      'williamboman/mason.nvim',
      'neovim/nvim-lspconfig',
      'williamboman/mason-lspconfig.nvim'
    },
    --[[{
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }--]]
}

local opts = {}

require("lazy").setup(plugins, opts)
