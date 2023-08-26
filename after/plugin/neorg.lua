require('neorg').setup {
  load = {
    ["core.defaults"] = {},  -- Loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.export"] = {},    -- Export to file
    ["core.dirman"] = {      -- Manages Neorg workspaces
      config = {
        workspaces = {
          work = "~/work/thecodeisgreen/notes",
        },
        default_workspace = "work",
      },
    },
  },
}
