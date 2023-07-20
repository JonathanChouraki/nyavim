local utils = require('nyavim.utils')

require("nvim-tree").setup()
utils.normalModeKeybind('<C-n>', 'NvimTreeToggle')

