require 'myconf.mappings'
require 'myconf.options'
require 'myconf.mappings'

require 'pconf.lsp'
require 'pconf.nvimtree'
require 'pconf.treesitter'
require 'plugins'


local path = ' ~/.config/nvim/vim/'

vim.cmd('source'..path..'themes.vim')
vim.cmd('source'..path..'nvimtree.vim')
vim.cmd('source'..path..'ps.vim')
vim.cmd('source'..path..'vimwiki.vim')

local gp = vim.api.nvim_create_augroup("split vertically", {clear = true})
vim.api.nvim_create_autocmd("WinNew", {command="wincmd L", group=gp})

