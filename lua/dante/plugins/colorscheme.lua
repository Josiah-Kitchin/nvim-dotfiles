return {
  {
    'https://github.com/catppuccin/nvim',
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      require("catppuccin").setup({
        flavour = "mocha", -- or "macchiato", "frappe", "latte"
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  }
}

