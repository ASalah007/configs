local function km(old, new)
    vim.api.nvim_set_keymap("n", old, new, {noremap = true, silent = true})
end

-- make space the leader key
km("<Space>", "<Nop>")
vim.g.mapleader = " "


km("<leader>d", "gg0dG$")
km("<leader>a", "gg0yG$")


-- km("<C-n>", "<CMD>Lexplore 30<CR>")

-- working with buffers
km("<A-o>", ":bp<cr>")
km("<A-i>", ":bn<cr>")
km("<A-w>", ":bw<cr>")
km("<A-l>", ":ls<cr>")
km("<A-d>", ":bd<cr>")

-- save
km("<C-s>", "<cmd>w<cr>")

--git
vim.api.nvim_set_keymap("n", "<leader>g", ":Git ", {noremap=true})

-- for nvimtree
km("<C-n>",     "<CMD>NvimTreeToggle<CR>"  )
km("<leader>r", "<CMD>NvimTreeRefresh<CR>" )
km("<leader>n", "<CMD>NvimTreeFindFile<CR>")

-- for telescope
km("<leader>ff", "<cmd>Telescope find_files<cr>")
km("<leader>fg", "<cmd>Telescope live_grep<cr>")
km("<leader>fb", "<cmd>Telescope buffers<cr>")
km("<leader>fh", "<cmd>Telescope help_tags<cr>")
km("<leader>fl", "<cmd>Telescope buffers<cr>")


-- for lsp
km('gd', '<CMD>lua vim.lsp.buf.definition()<cr>')
km('gD', '<CMD>lua vim.lsp.buf.declaration()<cr>')
km('gi', '<CMD>lua vim.lsp.buf.implementation()<cr>')
km('gw', '<CMD>lua vim.lsp.buf.document_symbol()<cr>')
km('gW', '<CMD>lua vim.lsp.buf.workspace_symbol()<cr>')
km('gr', '<CMD>lua vim.lsp.buf.references()<cr>')
km('gt', '<CMD>lua vim.lsp.buf.type_definition()<cr>')
km('H', '<CMD>lua vim.lsp.buf.hover()<cr>')
km('<c-k>', '<CMD>lua vim.lsp.buf.signature_help()<cr>')
km('<leader>rn', '<CMD>lua vim.lsp.buf.rename()<cr>')
km('<leader>fa', '<CMD>lua vim.lsp.buf.code_action()<cr>')


-- arrow keys for resizing
km("<c-up>",    ":resize +2<CR>")
km("<c-down>",  ":resize -2<CR>")
km("<c-left>",  ":vertical resize -2<CR>")
km("<c-right>", ":vertical resize +2<CR>")


local opts = {noremap=true, silent=true};

-- stay in visual mode after indent
vim.api.nvim_set_keymap("v", "<", "<gv", opts)
vim.api.nvim_set_keymap("v", ">", ">gv", opts)

-- draging text
vim.api.nvim_set_keymap("v", "J", ":move '>+1<CR>gv", opts) -- move the visualized area under the line below the last line in the visualized area
vim.api.nvim_set_keymap("v", "K", ":move '<-2<CR>gv", opts)

-- close the completion menu
vim.api.nvim_set_keymap("i", "<C-f>", "<cmd>lua require('cmp').close()<cr>", {noremap=true, silent=true})

-- undo in insert mode
vim.api.nvim_set_keymap("i", "<c-z>", "<cmd>undo<cr>", {noremap=true, silent=true})
