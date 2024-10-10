


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
call plug#end()



lua require('lualine_config'); 
lua require('treesitter_config'); 
lua require('neoscroller_config'); 
lua require('modicator_config'); 
lua require('neotree_config'); 
lua require('autoclose').setup(); 
lua require('gitsigns').setup()
lua require("toggleterm").setup(); 
lua require("bufferline").setup{}


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
    vim.cmd("silent! lcd " .. vim.fn.getcwd())
    vim.cmd("Explore")  -- or "Neotree" if you prefer Neotree
  end
end

-- Autocommand to trigger the function when starting Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = open_current_directory,
})



EOF


lua << EOF

vim.o.cursorline = true 
vim.o.number = true
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.opt.splitkeep = "screen"

vim.keymap.set('n', '<C-j>', '<Cmd>Neotree float<CR>')
vim.keymap.set('n', '<C-b>', '<Cmd>ToggleTerm<CR>')
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd w<CR>')
vim.keymap.set('n', '<C-u>', '<Cmd>BufferLinePick<CR>')
vim.keymap.set('n', '<C-i>', '<Cmd>BufferLinePickClose<CR>')


EOF






