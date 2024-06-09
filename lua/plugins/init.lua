return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },

  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = true,
    modules = {
     ["core.defaults"] = {},
     ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
     ["core.integrations.nvim-cmp"] = {},
     ["core.concealer"] = { config = { icon_preset = "diamond" } },
     ["core.keybinds"] = {
       -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
       config = {
         default_keybinds = true,
         neorg_leader = "<Leader><Leader>",
       },
     },
     ["core.dirman"] = {
       config = {
         workspaces = {
           Journal = "~/Sync/PersonalHome/Journal",
           org     = "~/Dropbox/org/",
         }
       }
     },
    },
  },

  -- {
  --   "dhruvasagar/vim-table-mode",
  -- }

  {
    "junegunn/vim-easy-align"
  },

}
