return {
  {
    'https://github.com/sainnhe/gruvbox-material',
    name = "gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      -- require("catppuccin").setup({
      --   flavour = "mocha", -- or "macchiato", "frappe", "latte"
      --   transparent_background = true,
      -- })
      vim.cmd.colorscheme("gruvbox-material")
    end,
  }
}

