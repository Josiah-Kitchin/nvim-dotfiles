vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt --for conciseness

opt.relativenumber = true
opt.number = true

--tabs and indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true --expand tab to spaces
opt.autoindent = true -- repeat indent on new line

opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true -- assumes case-sensitive when mixed case in search

-- highlight currently selected line
opt.cursorline = true

-- turn on termguicolors for colorscheme to work
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace on indent, end of line, or insert start position
opt.backspace = "indent,eol,start"

--use system clipboard as default register
opt.clipboard:append("unnamedplus")

--split windows default directions
opt.splitright = true
opt.splitbelow = true

-- disable line numbers on terminal windows 
vim.api.nvim_create_autocmd({"TermOpen"}, {
  pattern = {"*"},
  command = "setlocal nonumber norelativenumber",
})
