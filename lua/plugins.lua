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
  use {'wbthomason/packer.nvim', opt = true}  -- the package responsible for it all
  use {'drewtempelmeyer/palenight.vim'} -- palenight theme
  use {'itchyny/lightline.vim'} -- powerline alternative
  use {'tpope/vim-surround'}
  use {'tpope/vim-fugitive'} -- git integration
end)

