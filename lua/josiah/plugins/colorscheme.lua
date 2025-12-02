
--
-- return {
--   { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
--   {
--     "https://github.com/catppuccin/nvim",
--     lazy = false,
--     priority = 1000,
--     config = function(plugin)
--       require("catppuccin").setup({
--                 transparent_background = true,
--                 no_italic = true 
--
--       })
--       vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
--       vim.cmd([[colorscheme catppuccin]])
--     end
--   }
-- }
return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    "https://github.com/neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      require("everforest").setup({
                background = "hard",
                transparent_background_level = 1,
            })
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd([[colorscheme everforest]])
    end
  }
}
