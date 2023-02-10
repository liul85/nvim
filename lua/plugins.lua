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

local opts = {}
local plugins = {
  {
    "ellisonleao/gruvbox.nvim",
    priority=1000,
  },
  {"nvim-lua/popup.nvim", lazy=true},
  {"nvim-lua/plenary.nvim", lazy=true},
  {
    'hrsh7th/nvim-cmp',
    lazy=true,
    dependencies = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  },

  -- LSP
  {'neovim/nvim-lspconfig', lazy=true},

  -- git labels
  {
    'lewis6991/gitsigns.nvim',
    lazy=true,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup{}
    end
  },

  -- Dashboard (start screen)
  {
    'goolord/alpha-nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
  },

  -- fzf
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'kyazdani42/nvim-web-devicons'},
  },

  -- Treesitter interface
  {'nvim-treesitter/nvim-treesitter', lazy=true},

  -- autopairs
  {"windwp/nvim-autopairs", lazy=true},

  -- nvm-tree
  {'kyazdani42/nvim-web-devicons'},
  {'kyazdani42/nvim-tree.lua', lazy=true},
  {'JoosepAlviste/nvim-ts-context-commentstring', lazy=true},
  {'tpope/vim-commentary', lazy=true},

  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    lazy=true,
    dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
  },

  -- project
  {"nvim-telescope/telescope-project.nvim"},

  {"simrat39/rust-tools.nvim", lazy=true},

  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    dependencies = {'nvim-lua/plenary.nvim'}
  },

  {
    "folke/trouble.nvim",
    lazy=true,
    dependencies = "kyazdani42/nvim-web-devicons"
  },

  -- markdown preview
  {
      "iamcco/markdown-preview.nvim",
      lazy=true,
      build = function() vim.fn["mkdp#util#install"]() end,
  }
}

require("lazy").setup(plugins, opts)
