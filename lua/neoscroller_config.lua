
-- Import and configure neoscroll
require('neoscroll').setup({
  -- All these keys will be mapped to their default values

  -- or a table with specific mappings
  mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>'},

  -- Scroll speed
  scroll_speed = 2.0,

  -- Hide the cursor while scrolling
  hide_cursor = false,

  -- Set the timing function for the scrolling animation
  -- Can be one of 'linear', 'quadratic', 'cubic', 'elastic', or 'bounce'
  timing_function = 'linear',

  -- Enable/disable the plugin's animations
  -- Setting it to false will disable the plugin
  enable = true
})
