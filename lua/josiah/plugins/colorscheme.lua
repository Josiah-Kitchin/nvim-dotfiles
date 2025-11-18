
return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    "https://github.com/folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      require("tokyonight").setup({
        transparent = true
      })
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd([[colorscheme tokyonight]])
    end
  }
}

