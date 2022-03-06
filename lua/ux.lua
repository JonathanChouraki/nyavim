-- alias --
local g = vim.g
local o = vim.o
local bo = vim.bo

-- indent with 2 spaces
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true

-- relative line numbering with absolute current line
o.relativenumber = true
o.number = true

-- always show 3 lines above and below cursor
o.scrolloff = 3

-- always show 3 columns left and right of cursor
o.sidescrolloff = 3

-- show a completion menu
o.wildmenu = true
o.wildmode = "full"

-- highlight the line where the cursor is
o.cursorline = true

-- hightlight matches
o.hlsearch = true

-- highlight matches while typing
o.incsearch = true

-- copy paste to system clipboard by default
o.clipboard = "unnamedplus"

-- case insensitive searching unless /C or capital in search
o.ignorecase = true
o.smartcase = true

-- substitute all match in a line by default
o.gdefault = true

-- autoindent on new line
o.autoindent = true

-- save undo history
bo.undofile = true

-- enable mouse mode
o.mouse = 'a'

-- faster macro
o.lazyredraw = true

-- completion settings
o.completeopt="menuone,noinsert,noselect"
