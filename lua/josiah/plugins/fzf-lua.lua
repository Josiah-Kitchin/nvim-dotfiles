return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      files = {
        fd_opts = table.concat({
          "--type f",
          "--hidden",
          "--exclude", ".git",
          "--exclude", ".git/*",
          "--exclude", "node_modules",
          "--exclude", "build",
          "--exclude", "CMakeFiles",
          "--exclude", "*.o",
          "--exclude", "*.a",
          "--exclude", "*.so",
          "--exclude", "*.out",
          "--exclude", "*.exe",
        }, " "),
      },
      grep = {
        rg_opts = table.concat({
          "--hidden",
          "--glob", "!.git/*",
          "--glob", "!node_modules/*",
          "--glob", "!build/*",
          "--glob", "!CMakeFiles/*",
          "--glob", "!.cache/*",
          "--glob", "!*.o",
          "--glob", "!*.a",
          "--glob", "!*.so",
          "--glob", "!*.out",
          "--glob", "!*.exe",
        }, " "),
      },
    })
  end,
}

