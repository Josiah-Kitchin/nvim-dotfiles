


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
    Plug 'https://github.com/xiyaowong/transparent.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'https://github.com/rose-pine/neovim'
call plug#end()


lua require('lualine_config'); 
lua require('treesitter_config'); 
lua require('modicator_config'); 
lua require('autoclose').setup(); 
lua require('gitsigns').setup();
lua require("toggleterm").setup(); 

lua << EOF
require("rose-pine").setup({
    variant = "auto", -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
    },

    styles = {
        bold = true,
        italic = false,
        transparency = false,
    },

    groups = {
        border = "muted",
        link = "iris",
        panel = "surface",

        

        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
    },

    palette = {
        moon = {
            base = '#0b0b0f',
            surface = '#0b0b0f',
            muted = '#242430',
        }
    }

})

EOF

colorscheme rose-pine-moon

highlight CursorLine ctermbg=235 guibg=#16161e




lua << EOF
vim.opt.termguicolors = true


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


set shiftwidth=4
set laststatus=3
set termguicolors



set guicursor=n-v-c:block-Cursor/lCursor
            \,i-ci-ve:ver100-iCursor
            \,r-cr:block-rCursor
            \,o:hor50-Cursor/lCursor
            \,sm:block-iCursor


lua << EOF

vim.o.cursorline = true
vim.o.number = true
vim.o.termguicolors = true
vim.o.relativenumber = true

vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8




vim.keymap.set('n', '<C-j>', '<Cmd>NvimTreeClose<CR>')
vim.keymap.set('n', '<C-b>', '<Cmd>ToggleTerm<CR>')
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd w<CR>')

EOF






