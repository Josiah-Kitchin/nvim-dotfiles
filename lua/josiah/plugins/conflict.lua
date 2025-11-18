return {
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      require("git-conflict").setup({
        default_mappings = true, -- enables built-in keymaps
        disable_diagnostics = true,
      })
    end,
  },
}

