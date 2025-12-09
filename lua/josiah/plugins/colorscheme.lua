return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    "https://github.com/maxmx03/FluoroMachine.nvim",
    lazy = false,
    priority = 1000,
    config = function(plugin)
          local fm = require 'fluoromachine'
         fm.setup {
            glow = false,
            theme = 'retrowave',
            transparent = false,
         }

         vim.cmd.colorscheme 'fluoromachine'
    end
  }
}
