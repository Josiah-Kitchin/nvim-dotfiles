return {
  {
    "kylechui/nvim-surround",
    version = "*", -- use the latest stable version
    lazy = false,
    config = function()
      require("nvim-surround").setup({})
    end,
  },
}

