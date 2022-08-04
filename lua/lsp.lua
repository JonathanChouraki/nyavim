local utils = require('utils')
local wk = require('which-key')

utils.normalModeKeybind('<leader>lde', "lua vim.diagnostic.open_float(nil, {focus=false})")
utils.normalModeKeybind('<leader>ldk', "lua vim.diagnostic.goto_prev()")
utils.normalModeKeybind('<leader>ldj', "lua vim.diagnostic.goto_next()")
utils.normalModeKeybind('<leader>lda', "lua vim.diagnostic.setloclist()")

local on_attach = function(client, bufnr)

  -- local bufopts = { noremap=true, silent=true, buffer=bufnr }
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
  utils.normalModeKeybind('<leader>lt',  "lua vim.lsp.buf.type_definition()")
  utils.normalModeKeybind('<leader>lr', "lua vim.lsp.buf.rename()")
  utils.normalModeKeybind('<F2>', "lua vim.lsp.buf.rename()")
  utils.normalModeKeybind('<leader>lc', "lua vim.lsp.buf.code_action()")
  utils.normalModeKeybind('<leader>ll', "lua vim.lsp.buf.references()")
  utils.normalModeKeybind('<leader>lf', "lua vim.lsp.buf.formatting()")
  --utils.normalModeKeybind('<leader>wl', function()
    -- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  --end)
end

wk.register({
  g = {
    D = "Go to declaration",
    d = "Go to definition",
    s = "Go to implementation"
  }
})

wk.register({
  l = {
    name = "lsp",
    t = "type definition",
    r = "rename",
    c = "code action",
    l = "references",
    f = "format",
    d = {
      name = "diagnostic",
      e = "open diagnostic",
      n = "previous diagnostic",
      p = "next diagnostic",
      q = "loclist"
    },
    w = {
      name = "workspace",
      a = "add folder",
      r = "remove folder"
    },
    g = {
      name = "go",
      D = "go to declaration",
      d = "go to definition",
      s = "go to implementation"
    }
  },
}, { prefix = '<leader>' })

local lsp_flags = {
}

require('lspconfig').tsserver.setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig').hls.setup{
  on_attach = on_attach,
  flags = lsp_flags
}

