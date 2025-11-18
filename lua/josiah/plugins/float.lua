return {
  {
    "voldikss/vim-floaterm",
    cmd = { "FloatermToggle", "FloatermNew", "FloatermPrev", "FloatermNext" },
    init = function()
      vim.g.floaterm_position = "center"
      vim.g.floaterm_width = 0.9
      vim.g.floaterm_height = 0.8
      vim.g.floaterm_autoclose = 0       -- 👈 don’t close when process exits
      vim.g.floaterm_wintitle = 0
      vim.g.floaterm_opener = "edit"
    end,
  },
}

