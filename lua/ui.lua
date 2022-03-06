local g = vim.g
local o = vim.o
local cmd = vim.cmd

-- setup theme
o.termguicolors = true
cmd 'colorscheme palenight'
g.palenight_terminal_italics = true

-- don't show current mode, handled by lightline
o.showmode = false 

-- setup status line
g.lightline = {
  colorscheme = 'palenight';
  active = {
    left = {
      { 'mode', 'paste' },
      { 'readonly', 'filename', 'modified' }
    };
    right = {
      { 'lineinfo'},
      { 'filetype', 'gitbranch'},
    };
  };
  component = {
    readonly = '%{&readonly?"":""}',
  };
  component_function = {
    gitbranch = 'fugitive#head'
  };
  separator = {
    left = '';
    right = '';
  };
  subseparator = {
    left = '';
    right = '';
  };
};

