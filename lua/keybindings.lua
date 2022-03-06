local key = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
local normalMode = 'n'
local visualMode = 'v'
local insertMode = 'i'

function executeCmd(cmd)
   return '<cmd> ' .. cmd .. ' <cr>'
end

vim.g.mapleader = ','

key(normalMode, '<leader>s', executeCmd('vsplit'), opts)
key(normalMode, '<leader>b', executeCmd('split'), opts)
key(normalMode, '<leader>t', executeCmd('tabnew'), opts)
key(normalMode, '<leader><space>', executeCmd('noh'), opts)
key(normalMode, '<leader>h', executeCmd('wincmd h'), opts)
key(normalMode, '<leader>j', executeCmd('wincmd j'), opts)
key(normalMode, '<leader>k', executeCmd('wincmd k'), opts)
key(normalMode, '<leader>l', executeCmd('wincmd l'), opts)
