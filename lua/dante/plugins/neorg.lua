return {
  "nvim-neorg/neorg",
  dependencies = { "luarocks.nvim" },
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = "*", -- Pin Neorg to the latest stable release
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        -- ["core.completion"] = {
        --   config = { engine "nvim-cmp", name = "[Norg]" }
        -- },
        -- ["core.integrations.nvim-cmp"] = {},
        ["core.qol.toc"] = {
          config = {
            close_after_use = true,
            fit_width = true,
          },
        },
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              home = "~/Personal"
            },
            default_workspace = "home",
          },
        },
      },
    })
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ni", "<cmd>Neorg index<CR>", { desc = "Open Neorg index" })
    keymap.set("n", "<leader>nc", "<cmd>Neorg toggle-concealer<CR>", { desc = "Neorg conceal" })
    keymap.set("n", "<leader>nt", "<cmd>Neorg toc right<CR>", { desc = "Neorg ToC" })
    keymap.set("n", "<leader>cm", "<cmd>Neorg keybind all core.looking-glass.magnify-code-block<CR>", { desc = "Magnify code block" })
    keymap.set("n", "<leader>ct", "<cmd>Neorg tangle current-file<CR>", { desc = "Tangle code" })
  end,
}
