return {
  {
    "https://github.com/maxmx03/FluoroMachine.nvim",
    lazy = false,
    priority = 1000,
    config = function(plugin)
          local fm = require 'fluoromachine'
         fm.setup {
            glow = false,
            theme = 'retrowave',
            transparent = true,
            colors = function(_, color)
                local darken = color.darken
    local lighten = color.lighten
    local blend = color.blend
    local shade = color.shade
    local tint = color.tint
    return {
      bg = '#000000',
      bgdark = '#0A0A0A',
      -- cyan = '#49eaff',
      -- red = '#ff1e34',
      -- yellow = '#ffe756',
      -- orange = '#ffe765',
      orange = '#49eaff',
      -- pink = '#ffadff',
      -- purple = '#9544f7',
    }
            end,
         }

         vim.cmd.colorscheme 'fluoromachine'
    end
  }
}
