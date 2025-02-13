:tnoremap <C-j> <C-\><C-n>


call plug#begin()
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    Plug 'nvim-tree/nvim-web-devicons'

    Plug 'nvim-lualine/lualine.nvim'

    Plug 'https://github.com/mawkler/modicator.nvim'

    Plug 'https://github.com/nvim-lua/plenary.nvim'

    Plug 'https://github.com/m4xshen/autoclose.nvim'

    Plug 'https://github.com/lewis6991/gitsigns.nvim'

    Plug 'https://github.com/akinsho/bufferline.nvim'

    Plug 'https://github.com/nvim-tree/nvim-tree.lua'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'https://github.com/nvim-telescope/telescope.nvim'

    Plug 'https://github.com/sainnhe/gruvbox-material'

    Plug 'mhartington/formatter.nvim'

    Plug 'https://github.com/nvim-telescope/telescope-file-browser.nvim'

    Plug 'Almo7aya/neogruvbox.nvim', { 'branch': 'master' }


    



call plug#end()

lua << EOF

--Plugins

    --custom
    require('lualine_config');
    require('treesitter_config');
    require('modicator_config');
    require('tree_config');
    require('format_config');
    require('telescope_config');

    --default
    require('autoclose').setup();
    require('gitsigns').setup();

--Settings
    require('settings')
    require('keymappings')





EOF

colorscheme gruvbox-material
set clipboard=unnamedplus
set shiftwidth=4
set laststatus=3

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"












