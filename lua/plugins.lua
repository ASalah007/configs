return require('packer').startup(function()

use 'wbthomason/packer.nvim'

--  themes
use {'sonph/onehalf', rtp = 'vim' }
use 'joshdick/onedark.vim'
use 'tomasiser/vim-code-dark'

--  scratch buffers
use 'vim-scripts/scratch.vim'

-- for better syntax highlighting
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

-- for completion
use 'neovim/nvim-lspconfig'
use 'williamboman/nvim-lsp-installer'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
-- snip
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
-- icons
use 'onsails/lspkind.nvim'


-- nerd tree note: used with font ubuntu Mono Nerd Regular size 15
use 'kyazdani42/nvim-web-devicons' --  for file icons
use 'kyazdani42/nvim-tree.lua'

--  telescope
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

--  vimwiki
use 'vimwiki/vimwiki'

--  commenting
use 'tpope/vim-commentary'

-- vim api for auto completion
use 'tjdevries/nlua.nvim'

-- java lsp and debugger
-- use 'mfussenegger/nvim-jdtls'

-- html css
use 'mattn/emmet-vim'

-- lua line
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

end)


