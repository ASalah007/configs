require('plugins')
require('pconf.lsp')
require('pconf.nvimtree')
require('pconf.treesitter')
require('myconf.mappings')
require('myconf.options')

vim.cmd('source ~/.config/nvim/vim/themes.vim')
vim.cmd('source ~/.config/nvim/vim/mappings.vim')
vim.cmd('source ~/.config/nvim/vim/conf.vim')
vim.cmd('source ~/.config/nvim/vim/nvimtree.vim')

vim.cmd('source ~/.config/nvim/vim/ps.vim')

