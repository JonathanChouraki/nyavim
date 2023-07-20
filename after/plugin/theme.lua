local cmd = vim.cmd

-- setup theme
vim.o.termguicolors = true
--vim.g.material_style = "palenight"

cmd 'colorscheme tokyonight'

-- set background color to none to appear seamless with alacritty padding
cmd[[highlight Normal ctermbg=NONE guibg=NONE]]
-- set line number column color to none to appear seamless with alacritty padding
cmd[[highlight LineNr ctermbg=NONE guibg=NONE]]
-- set sign column color to none to appear seamless with alacritty padding
cmd[[highlight SignColumn ctermbg=NONE guibg=NONE]]
