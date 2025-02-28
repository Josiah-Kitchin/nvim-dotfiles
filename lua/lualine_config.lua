

local custom_gruvbox = require'lualine.themes.catppuccin'
custom_gruvbox = {
  normal = {
    c = { bg = "None"},
  },
}



require('lualine').setup {
  options = {
    theme = custom_gruvbox;  
    globalstatus = true; 
  },
  extensions = { 'nvim-tree', 'fugitive' }
}

