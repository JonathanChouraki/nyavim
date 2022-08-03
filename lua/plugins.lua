local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

-- packer initalisation -- stolen from mjlbach
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
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
  use { 'wbthomason/packer.nvim', opt = true }  -- the package responsible for it all
  use { 'marko-cerovac/material.nvim' } -- material theme with palenight
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-fugitive' } -- git integration
  use { 'kyazdani42/nvim-web-devicons' } -- icons
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } } -- fuzzy finder
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- improved fuzzy finding with fzf
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', opt = true }} -- file explorer

  use { 'neovim/nvim-lspconfig' } -- Collection of configurations for built-in LSP client
  use { 'hrsh7th/nvim-cmp' } -- Autocompletion plugin
  use { 'hrsh7th/cmp-nvim-lsp' } -- LSP source for nvim-cmp
  use { 'saadparwaiz1/cmp_luasnip' } -- Snippets source for nvim-cmp
  use { 'L3MON4D3/LuaSnip' } -- Snippets plugin

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- better syntax

  use { "folke/which-key.nvim" } -- Popup with binding configuraiton
end)

require'nvim-web-devicons'.setup {
  default = true;
}

require('telescope').setup{}

require('telescope').load_extension('fzf')

require('which-key').setup{
  layout = {
    height = { min = 2, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 5, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
}

require('nvim-treesitter.configs').setup {
  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
}


require("nvim-tree").setup()
