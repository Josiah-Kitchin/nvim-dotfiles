return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "gruvbox-material",
  },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    -- Use the official Catppuccin theme
    lualine.setup({
      options = {
        theme = "gruvbox-material", -- this uses the installed Catppuccin theme
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#f9e2af" }, -- optional: tweak this if needed
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}

