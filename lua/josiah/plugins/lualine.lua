
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local custom = require('lualine.themes.tokyonight')

    lualine.setup({
      options = {
        theme = custom,
        globalstatus = true, -- optional, but nice for one bar across splits
      },

     sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#f9e2af" },
          },
          "encoding",
          "fileformat",
          "filetype",
        },
      },
    })

    vim.api.nvim_set_hl(0, "StatusLine",   { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

  end,
}

