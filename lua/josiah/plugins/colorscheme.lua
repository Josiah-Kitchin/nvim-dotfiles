return {
  {
    "https://github.com/Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function(plugin)
          local fm = require 'dracula'
         fm.setup {

         }

         vim.cmd.colorscheme 'dracula'
    end
  }
}
