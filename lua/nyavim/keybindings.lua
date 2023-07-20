local wk = require('which-key')
local utils = require('nyavim.utils')
local g = vim.g

g.mapleader = ' '

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
utils.normalModeKeybind('<tab>', '%')
utils.visualModeKeybind('<tab>', '%')

-- make yanking behave like delete and change
utils.visualModeKeybind('Y', 'y$')

wk.register({
  f = {
    name = "find",
    f = "file",
    g = "live grep",
    b = "buffers",
    m = "marks",
    ["*"] = "strings",
    ["/"] = "buffer fuzzy find",
  },
  g = {
    name = "git",
    b = "branch",
    s = "stash",
    c = "commit",
  }
}, { prefix = '<leader>' })
