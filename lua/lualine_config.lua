
local custom_theme = require'lualine.themes.dracula'
local colors = require("tokyonight.colors").setup()

-- Change the background of lualine_c section for normal mode
custom_theme.normal.c.bg = colors.bg_light
custom_theme.inactive.c.bg = colors.bg_light
custom_theme.inactive.c.fg = colors.bg_light

custom_theme.normal.b.bg = "#30f0c1c"
custom_theme.inactive.b.bg = "#30f0c1c"
custom_theme.command.b.bg = "#30f0c1c"
custom_theme.insert.b.bg = "#30f0c1c"
custom_theme.replace.b.bg = "#30f0c1c"
custom_theme.visual.b.bg = "#30f0c1c"

--
-- custom_theme.normal.a.bg = colors.cyan
-- custom_theme.insert.a.bg = colors.blue
-- custom_theme.command.a.bg = colors.green 
-- custom_theme.visual.a.bg = colors.purple
--
custom_theme.insert.c.bg = colors.bg_light
custom_theme.command.c.bg = colors.bg_light
custom_theme.visual.c.bg =  colors.bg_light
require('lualine').setup {
    options = {
    icons_enabled = true,
    theme = custom_theme, 
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}


