local utils = require('nyavim.utils')
local lsp = require("lsp-zero")

lsp.preset({})

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
  'clangd'
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

utils.normalModeKeybind('<leader>lde', "lua vim.diagnostic.open_float(nil, {focus=false})")
utils.normalModeKeybind('<leader>ldk', "lua vim.diagnostic.goto_prev()")
utils.normalModeKeybind('<leader>ldj', "lua vim.diagnostic.goto_next()")
utils.normalModeKeybind('<leader>lda', "lua vim.diagnostic.setloclist()")

lsp.on_attach(function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  utils.normalModeKeybind('gD', "lua vim.lsp.buf.declaration()")
  utils.normalModeKeybind('gd', "lua vim.lsp.buf.definition()")
  utils.normalModeKeybind('gs', "lua vim.lsp.buf.implementation()")
  utils.normalModeKeybind('<leader>lgD', "lua vim.lsp.buf.declaration()")
  utils.normalModeKeybind('<leader>lgd', "lua vim.lsp.buf.definition()")
  utils.normalModeKeybind('<leader>lgs', "lua vim.lsp.buf.implementation()")
  utils.normalModeKeybind('K', "lua vim.lsp.buf.hover()")
  utils.normalModeKeybind('<C-k>', "lua vim.lsp.buf.signature_help()")
  utils.normalModeKeybind('<leader>lwa', "lua vim.lsp.buf.add_workspace_folder()")
  utils.normalModeKeybind('<leader>lwr', "lua vim.lsp.buf.remove_workspace_folder()")
  utils.normalModeKeybind('<leader>lt', "lua vim.lsp.buf.type_definition()")
  utils.normalModeKeybind('<leader>lr', "lua vim.lsp.buf.rename()")
  utils.normalModeKeybind('<F2>', "lua vim.lsp.buf.rename()")
  utils.normalModeKeybind('<leader>lc', "lua vim.lsp.buf.code_action()")
  utils.normalModeKeybind('<leader>ll', "lua vim.lsp.buf.references()")
  utils.normalModeKeybind('<leader>lf', "lua vim.lsp.buf.formatting()")

  lsp.buffer_autoformat()
  --utils.normalModeKeybind('<leader>wl', function()
  -- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  --end)
end)

lsp.setup()
