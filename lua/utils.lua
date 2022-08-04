local U = {}
local key = vim.api.nvim_set_keymap
local normalMode = 'n'
local visualMode = 'v'
local insertMode = 'i'
local defaultOpts = {noremap = true, silent = true}

function executeCmd(cmd)
   return '<cmd> ' .. cmd .. ' <cr>'
end

function U.normalModeKeybind(keybind, command, opts)
  opts = opts or defaultOpts
  key(normalMode, keybind, executeCmd(command), opts)
end

function U.visualModeKeybind(keybind, command, opts)
  opts = opts or defaultOpts
  key(visualMode, keybind, executeCmd(command), opts)
end

return U

