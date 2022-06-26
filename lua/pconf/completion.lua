vim.opt.completeopt= {menu,menuone,noselect}
local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {}
    if server.name == "sumneko_lua" then
        opts = {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim', 'use' }
                    },
                }
            }
        }
    end
    server:setup(opts)
end)

local cmp = require'cmp'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'cmdline' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        -- { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})
require('lspkind').init({
   mode = 'symbol_text',
   preset = 'codicons',
   symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})
-- for icons
local lspkind = require('lspkind')
cmp.setup.formatting = {
    format = lspkind.cmp_format({
        mode = 'symbol_text', -- show only symbol annotations
        maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

        -- The function below will be called before any actual modifications from lspkind
        -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
        -- before = function (entry, vim_item)
        --     -- ...
        --     return vim_item
        -- end,
        menu = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            nvim_lua = "[Lua]",
            latex_symbols = "[Latex]",
        })
    })
}


-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['jdtls'].setup { capabilities = capabilities } -- java
--  require('lspconfig')['clangd'].setup{capabilities = capabilities} -- c c++

-- nvim-lsp-installer
local lspconfig = require("lspconfig")

local function on_attach(client, bufnr)
        -- set up buffer keymaps, etc.
end

-- lspconfig.jdtls.setup { on_attach = on_attach , capabilities=capabilities}
-- lspconfig.sumneko_lua.setup { on_attach = on_attach , capabilities=capabilities}
lspconfig.tsserver.setup { on_attach = on_attach , capabilities=capabilities}
lspconfig.clangd.setup { on_attach = on_attach , capabilities=capabilities}
lspconfig.sqlls.setup { on_attach = on_attach , capabilities=capabilities}

-- suppress error messages from lang servers
 vim.notify = function(msg, log_level, _opts)
     if msg:match("exit code") then
         return
     end
     if log_level == vim.log.levels.ERROR then
         vim.api.nvim_err_writeln(msg)
     else
         vim.api.nvim_echo({{msg}}, true, {})
     end
 end


-- vim api completion
-- require('nlua.lsp.nvim').setup(require('lspconfig'), {
--   -- Include globals you want to tell the LSP are real :)
--   globals = {
--     -- Colorbuddy
--     "Color", "c", "Group", "g", "s",
--   }
-- })
