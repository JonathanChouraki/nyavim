local g = vim.g
local o = vim.o
local cmd = vim.cmd

-- setup theme
o.termguicolors = true
g.material_style = "palenight"
cmd 'colorscheme tokyonight'

-- set background color to none to appear seamless with alacritty padding
cmd[[highlight Normal ctermbg=NONE guibg=NONE]]
-- set line number column color to none to appear seamless with alacritty padding
cmd[[highlight LineNr ctermbg=NONE guibg=NONE]]
-- set sign column color to none to appear seamless with alacritty padding
cmd[[highlight SignColumn ctermbg=NONE guibg=NONE]]

-- don't show current mode, handled by lualine
o.showmode = false 

-- setup status line
require('lualine').setup {
  options = {
    refresh = {
      statusline = 250,
      tabline = 250,
      winbar = 250,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {'filetype'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {'filename'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
}

