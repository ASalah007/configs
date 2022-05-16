call plug#begin('~/.config/nvim/plugins')

" themes
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'chriskempson/base16-vim'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }

" scratch buffers
Plug 'vim-scripts/scratch.vim'

"for better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" for lsp support (some setup are in lsp.vim)
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

"nerd tree note: used with font ubuntu Mono Nerd Regular size 15
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" vimwiki 
Plug 'vimwiki/vimwiki'

" commenting
Plug 'tpope/vim-commentary'

call plug#end()


" for lsp
set completeopt=menu,menuone,noselect

" for remappings
source ~/.config/nvim/vim/mappings.vim

" for options 
source ~/.config/nvim/vim/options.vim

" for problem solving
source ~/.config/nvim/vim/ps.vim

" for nvim tree
source ~/.config/nvim/vim/nvimtree.vim

"note this should be below nvimtree.vim
"for all lua scripts
source ~/.config/nvim/req.lua


" for vimwiki
let g:vimwiki_list = [{'path': '~/main/wiki', 'syntax': 'markdown', 'ext': '.md'}]

" for nvimtree
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

"for nvim-telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <A-l> <cmd>Telescope buffers<cr>
