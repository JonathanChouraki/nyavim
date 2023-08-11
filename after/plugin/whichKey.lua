local wk = require('which-key')

wk.setup {
  layout = {
    height = { min = 2, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 5,                    -- spacing between columns
    align = "left",                 -- align columns left, center or right
  },
}

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
  },
  l = {
    name = "lsp",
    t = "type definition",
    r = "rename",
    c = "code action",
    l = "references",
    f = "format",
    d = {
      name = "diagnostic",
      e = "open diagnostic",
      n = "previous diagnostic",
      p = "next diagnostic",
      q = "loclist"
    },
    w = {
      name = "workspace",
      a = "add folder",
      r = "remove folder"
    },
    g = {
      name = "go",
      D = "go to declaration",
      d = "go to definition",
      s = "go to implementation"
    }
  }
}, { prefix = '<leader>' })
