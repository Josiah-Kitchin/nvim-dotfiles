vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

vim.api.nvim_create_user_command("FormatCpp", function()
  vim.cmd("!clang-format -i %")
  vim.cmd("edit!")  -- reload buffer
end, { nargs = 0 })


keymap.set("n", "<leader>z", "<cmd>FormatCpp<CR>", { desc = "Format C++ file with clang-format" })

-- escape insert mode w/ jk
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode w/ jk" })

keymap.set("n", "<ESC>", "<cmd>nohl<CR>", { desc = "clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizonally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "close split" })

-- buffer navigation
keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>bi", "<cmd>ls<CR>", { desc = "List buffers interactively" })
keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

-- Better window navigation
keymap.set("n", "<leader>h", "<C-w>h", { desc = "window left" })
keymap.set("n", "<leader>j", "<C-w>j", { desc = "window down" })
keymap.set("n", "<leader>k", "<C-w>k", { desc = "window up" })
keymap.set("n", "<leader>l", "<C-w>l", { desc = "window right" })

-- Easy align columns of text
keymap.set("n", "ga", "<Plug>(EasyAlign)")

-- Exit terminal mode with ESC 
-- keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "exit terminal" })

-- toggle zen mode
-- keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", {desc = "Toggle Zen Mode"})

-- tree view
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer

-- auto sessions
keymap.set("n", "<leader>r", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

-- fzf 
keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find files" }) -- open fzf
keymap.set("n", "<leader>fh", "<cmd>FzfLua files cwd=~<CR>", { desc = "Find files in ~" }) -- open fzf
keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<CR>", { desc = "Find recently opened files" }) 
keymap.set("n", "<leader>fs", "<cmd>FzfLua live_grep<CR>", { desc = "Find string in cwd" }) 

-- terminal
keymap.set("n", "<leader>t", "<cmd>FloatermToggle<CR>", { desc = "Open floating terminal" })
-- Normal mode toggle
keymap.set("t", "<C-t>", "<C-\\><C-n><cmd>FloatermToggle<CR>", { desc = "Toggle terminal (terminal mode)" })



