return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate", -- treesitter update
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugins
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      autotag = { enabel= true },
      --ensure these language parsers are installed
      ensure_installed = {
        "bash",
        "bibtex",
        "c",
        "css",
        "csv",
        "julia",
        "latex",
        "lua",
        "markdown_inline",
        "norg",
        "r",
        "vim",
        "vimdoc",
      }
    })

  end,
}
