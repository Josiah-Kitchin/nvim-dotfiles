return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
        files = {
            fd_opts = "--type f --hidden --exclude .git --exclude node_modules --exclude build"
        }
    })

  end
}
