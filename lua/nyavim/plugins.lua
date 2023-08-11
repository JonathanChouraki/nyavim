local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

-- packer initalisation -- stolen from mjlbach
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[packadd packer.nvim]]
-- autocompile plugins
vim.api.nvim_exec([[
augroup Packer
autocmd!
autocmd BufWritePost plugins.lua PackerCompile
augroup end
]], false)

local packer = require('packer')
local use = packer.use

packer.startup(function()
  use { 'wbthomason/packer.nvim', opt = true } -- the package responsible for it all
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-fugitive' }                                                                  -- git integration
  use { 'NeogitOrg/neogit', requires = 'nvim-lua/plenary.nvim' }                                -- git integration based on magit
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }           -- fuzzy finder
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }                              -- improved fuzzy finding with fzf
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', opt = true } } -- file explorer
  use { 'folke/which-key.nvim' }                                                                -- Popup with binding configuration
  use { 'ggandor/leap.nvim' }                                                                   -- Easy motion like plugin
  use { 'terrortylor/nvim-comment' }                                                            -- comment block of code
  use { 'kyazdani42/nvim-web-devicons' }                                                        -- icons
  use { "rest-nvim/rest.nvim", requires = { "nvim-lua/plenary.nvim" } }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- themes
  use { 'marko-cerovac/material.nvim' } -- material theme with palenight
  use { 'ChristianChiarulli/nvcode-color-schemes.vim' }
  use { 'folke/tokyonight.nvim' }
  use { 'yonlu/omni.vim' }

  -- note taking
  use {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
  }
  use { "catppuccin/nvim", as = "catppuccin" }
end)

require 'nvim-web-devicons'.setup {
  default = true,
}
