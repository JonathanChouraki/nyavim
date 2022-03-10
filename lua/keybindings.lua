local key = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
local normalMode = 'n'
local visualMode = 'v'
local insertMode = 'i'

function executeCmd(cmd)
   return '<cmd> ' .. cmd .. ' <cr>'
end

vim.g.mapleader = ' '

-- split
key(normalMode, '<leader>s', executeCmd('vsplit'), opts)
key(normalMode, '<leader>b', executeCmd('split'), opts)

-- tab
key(normalMode, '<leader>t', executeCmd('tabnew'), opts)

-- highlight deactivation
key(normalMode, '<leader><space>', executeCmd('noh'), opts)

-- windows
key(normalMode, '<leader>h', executeCmd('wincmd h'), opts)
key(normalMode, '<leader>j', executeCmd('wincmd j'), opts)
key(normalMode, '<leader>k', executeCmd('wincmd k'), opts)
key(normalMode, '<leader>l', executeCmd('wincmd l'), opts)

--jump to matching symbol
key(normalMode, '<tab>', '%', opts)
key(visualMode, '<tab>', '%', opts)

-- make yanking behave like delete and change
key(visualMode, 'Y', 'y$', opts)

