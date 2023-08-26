local utils = require('nyavim.utils')

require('telescope').load_extension('fzf')

utils.normalModeKeybind('<leader>ff', 'lua require("telescope.builtin").find_files()')
utils.normalModeKeybind('<leader>fg', 'lua require("telescope.builtin").live_grep()')
utils.normalModeKeybind('<leader>fb', 'lua require("telescope.builtin").buffers()')
utils.normalModeKeybind('<leader>fm', 'lua require("telescope.builtin").marks()')
utils.normalModeKeybind('<leader>f*', 'lua require("telescope.builtin").grep_string()')
utils.normalModeKeybind('<leader>f/', 'lua require("telescope.builtin").current_buffer_fuzzy_find()')
utils.normalModeKeybind('<leader>fj', 'lua require("telescope.builtin").jumplist()')
utils.normalModeKeybind('<leader>gb', 'lua require("telescope.builtin").git_branches()')
utils.normalModeKeybind('<leader>gs', 'lua require("telescope.builtin").git_stash()')
utils.normalModeKeybind('<leader>gc', 'lua require("telescope.builtin").git_commits()')
