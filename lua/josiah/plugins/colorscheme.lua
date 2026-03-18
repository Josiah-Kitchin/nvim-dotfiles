return {
  {
    "https://github.com/navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function(plugin)
          local fm = require 'onedark'
         fm.setup {
             style = 'darker'
         }

         vim.cmd.colorscheme 'onedark'
    end
  }
}
