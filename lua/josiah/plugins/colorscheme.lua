return {
  {
    "https://github.com/navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function(plugin)
          local fm = require 'onedark'
         fm.setup {
            style = 'darker', 
            -- transparent=true,
              lualine = {
                    transparent = true, -- lualine center bar transparency
                },
         }

         vim.cmd.colorscheme 'onedark'
    end
  }
}
