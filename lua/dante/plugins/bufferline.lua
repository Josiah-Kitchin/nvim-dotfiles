return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "thin",
      style_preset = "minimal",
      offsets = {
          filetype = "NvimTree",
          text = "File Explorer" ,
          text_align = {"left", "center", "right"},
          separator = true,
      },
    },
  },
}
