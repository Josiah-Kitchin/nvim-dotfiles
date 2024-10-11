return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
  {"vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "svban/YankAssassin.nvim",
    config = function()
      require("YankAssassin").setup {
             auto_normal = true, -- if true, autocmds are used. Whenever y is used in normal mode, the cursor doesn't move to start
             auto_visual = true, -- if true, autocmds are used. Whenever y is used in visual mode, the cursor doesn't move to start
         }
    end,
  },
  {"norcalli/nvim-colorizer.lua",
    config = function ()
      require("colorizer").setup {
        '*'; -- Highlight all files, but customize some others.
        '!vim'; -- Exclude vim from highlighting.
      }
    end,
  },
  {"voldikss/vim-floaterm"},
}
