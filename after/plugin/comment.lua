local utils = require('nyavim.utils')

require('nvim_comment').setup()

utils.normalModeKeybind('<C-_>', 'CommentToggle')
utils.visualModeKeybind('<C-_>', "'<,'>CommentToggle")
