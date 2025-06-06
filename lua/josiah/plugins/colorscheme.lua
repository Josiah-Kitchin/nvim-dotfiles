return {
  {
    'https://github.com/Mofiqul/dracula.nvim',
    name = "dracula",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true,
      vim.cmd.colorscheme("dracula")
    end,
  }

  -- {
  --   'https://github.com/f4z3r/gruvbox-material.nvim',
  --   name = "gruvbox-material",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.opt.termguicolors = true,
  --     vim.cmd.colorscheme("gruvbox-material")
  --   end,
  -- }

    
}

