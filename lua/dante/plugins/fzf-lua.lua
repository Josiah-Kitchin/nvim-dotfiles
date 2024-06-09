return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find files" }) -- open fzf
    keymap.set("n", "<leader>fh", "<cmd>FzfLua files cwd=~<CR>", { desc = "Find files in ~" }) -- open fzf
    keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<CR>", { desc = "Find recently opened files" }) 
    keymap.set("n", "<leader>fs", "<cmd>FzfLua live_grep<CR>", { desc = "Find string in cwd" }) 
  end
}
