local utils = require('nyavim.utils')

require('nvim_comment').setup()

utils.visualModeKeybind('<C-_>', "'<,'>CommentToggle")
utils.normalModeKeybind('<C-_>', 'CommentToggle')
