local wk = require('which-key')
local utils = require('utils')
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

-- telescope
utils.normalModeKeybind('<leader>ff', 'lua require("telescope.builtin").find_files()')
utils.normalModeKeybind('<leader>fg', 'lua require("telescope.builtin").live_grep()')
utils.normalModeKeybind('<leader>fb', 'lua require("telescope.builtin").buffers()')
utils.normalModeKeybind('<leader>fm', 'lua require("telescope.builtin").marks()')
utils.normalModeKeybind('<leader>f*', 'lua require("telescope.builtin").grep_string()')
utils.normalModeKeybind('<leader>f/', 'lua require("telescope.builtin").current_buffer_fuzzy_find()')

utils.normalModeKeybind('<leader>gb', 'lua require("telescope.builtin").git_branches()')
utils.normalModeKeybind('<leader>gs', 'lua require("telescope.builtin").git_stash()')
utils.normalModeKeybind('<leader>gc', 'lua require("telescope.builtin").git_commits()')

-- file explorer
utils.normalModeKeybind('<C-n>', 'NvimTreeToggle')

-- comment
utils.normalModeKeybind('<C-_>', 'CommentToggle')
utils.visualModeKeybind('<C-_>', 'CommentToggle')

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
