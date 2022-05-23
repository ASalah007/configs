local o = vim.opt

o.splitbelow = true
o.splitright = true
o.mouse = "a"
o.scrolloff = 8
o.sidescrolloff = 8

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true
o.autoindent = true
o.number=true
o.relativenumber = true
o.wrap = false
o.hls = false
o.ru = true
o.cursorline = true
o.clipboard="unnamedplus" -- xclip must be installed for this to work
o.termguicolors = true

-- fast lsp check
o.updatetime = 300

-- folding
o.foldmethod = "indent"
o.foldlevelstart = 2

