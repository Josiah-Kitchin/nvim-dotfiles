


call plug#begin() 
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'https://github.com/catppuccin/nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'https://github.com/karb94/neoscroll.nvim'
    Plug 'https://github.com/mawkler/modicator.nvim'
    Plug 'https://github.com/folke/noice.nvim'
    Plug 'https://github.com/MunifTanjim/nui.nvim'
    Plug 'sakhnik/nvim-gdb'
    Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim'
    Plug 'https://github.com/nvim-lua/plenary.nvim'
    Plug 'https://github.com/NTBBloodbath/doom-one.nvim'
    Plug 'https://github.com/folke/tokyonight.nvim'
    Plug 'vimlab/split-term.vim'
    Plug 'https://github.com/rebelot/kanagawa.nvim'
    Plug 'https://github.com/Mofiqul/dracula.nvim'
    Plug 'https://github.com/m4xshen/autoclose.nvim'
    Plug 'https://github.com/lewis6991/gitsigns.nvim'
    Plug 'https://github.com/akinsho/toggleterm.nvim'
    Plug 'https://github.com/akinsho/bufferline.nvim'
    Plug 'https://github.com/nvim-tree/nvim-tree.lua'
call plug#end()


lua require('lualine_config'); 
lua require('treesitter_config'); 
lua require('neoscroller_config'); 
lua require('modicator_config'); 
lua require('autoclose').setup(); 
lua require('gitsigns').setup()
lua require("toggleterm").setup(); 
"lua require("bufferline").setup{};

"transparent background
augroup user_colors
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
augroup END

lua << EOF
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults

-- OR setup with some options
require("nvim-tree").setup{
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}


EOF

colorscheme dracula 

set shiftwidth=4
set laststatus=3
set termguicolors


"sets cursor colors depending on mode" 
highlight iCursor guibg=#50fa7b ctermbg=229
highlight rCursor guibg=#FF79C6 ctermbg=124

set guicursor=n-v-c:block-Cursor/lCursor
            \,i-ci-ve:ver100-iCursor
            \,r-cr:block-rCursor
            \,o:hor50-Cursor/lCursor
            \,sm:block-iCursor


lua << EOF
-- Function to open the current directory if no arguments are provided
local function open_current_directory()
  local args = vim.fn.argv()
  if #args == 0 then
    vim.cmd("NvimTreeOpen")
  end
end

-- Autocommand to trigger the function when starting Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = open_current_directory,
})


vim.api.nvim_create_autocmd({"BufNewFile", "BufReadPost"}, {
  callback = function(args)
    if vim.fn.expand "%:p" ~= "" then

      vim.api.nvim_del_autocmd(args.id)
      vim.cmd "noautocmd NvimTreeOpen"
    end
  end,
})



EOF


lua << EOF

vim.o.cursorline = true 
vim.o.number = true
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.opt.splitkeep = "screen"

vim.keymap.set('n', '<C-j>', '<Cmd>NvimTreeOpen<CR>')
vim.keymap.set('n', '<C-b>', '<Cmd>ToggleTerm<CR>')
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd w<CR>')
vim.keymap.set('n', '<C-u>', '<Cmd>BufferLinePick<CR>')
vim.keymap.set('n', '<C-i>', '<Cmd>BufferLinePickClose<CR>')


EOF






