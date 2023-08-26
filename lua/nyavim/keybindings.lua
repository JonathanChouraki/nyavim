local utils = require('nyavim.utils')
local g = vim.g

g.mapleader = ' '
g.maplocalleader = ','

-- save all
utils.normalModeKeybind('<C-s>', 'wa')

-- split
utils.normalModeKeybind('<leader>s', 'vsplit')
utils.normalModeKeybind('<leader>b', 'split')

-- tab
utils.normalModeKeybind('<leader>t', 'tabnew')

-- buffer navigation
utils.normalModeKeybind('gh', 'bp')
utils.normalModeKeybind('gl', 'bn')

-- highlight deactivation
utils.normalModeKeybind('<leader><space>', 'noh')

-- windows
utils.normalModeKeybind('<leader>h', 'wincmd h')
utils.normalModeKeybind('<leader>j', 'wincmd j')
utils.normalModeKeybind('<leader>k', 'wincmd k')
utils.normalModeKeybind('<leader>l', 'wincmd l')

--jump to matching symbol
vim.api.nvim_set_keymap('v', '<tab>', '%', {})
vim.api.nvim_set_keymap('n', '<tab>', '%', {})
--
-- make yanking behave like delete and change
utils.visualModeKeybind('Y', 'y$')

-- search forward stay in place and center screen
vim.keymap.set('n', '*', '*Nzz', { desc = 'Search and center screen' })

-- better keybind for fold toggle
vim.api.nvim_set_keymap('n', 'zh', 'za', {})
