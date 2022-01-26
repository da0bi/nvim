vim.g.completeopt = "menu,menuone,noselect,noinsert"

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

-- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup({

    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
        end,
    },

    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),

        -- <Tab> mapping for completion list    
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif vim.fn["vsnip#available"](1) == 1 then
                feedkey("<Plug>(vsnip-expand-or-jump)", "")
            elseif has_words_before() then
                cmp.complete()
            else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                feedkey("<Plug>(vsnip-jump-prev)", "")
            end
        end, { "i", "s" }),
    },

    sources = cmp.config.sources({
        { name = 'nvim_lsp', max_item_count = 10 },
        { name = 'nvim_lua' },
        { name = 'path' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
        { name = 'buffer', keyword_length = 5 },
    }),

    formatting = {
        format = lspkind.cmp_format({
            with_text = true,
            preset = false,
            maxwidth = 50,
            menu = {
                buffer = '[buf]',
                nvim_lsp = '[lsp]',
                nvim_lua = '[lua]',
                path = '[path]',
                vsnip = '[snip]',
            },
        }),
    },
})

experimental = {
    ghost_text = true,
    native_menu = false,
},

--[[
-- OVERWRITES THE GLOBAL SOURCES !!!
-- Example for file specific completion
-- Add vim-dadbod-completion in sql files
vim.cmd [[
    augroup DadbodSql
        au!
        autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer {
            sources = { { name = 'vim-dadbod-completion' } }
        }
    augroup END
]]
--]]

--[[
-- Disable cmp for a buffer
autocmd FileType TelescopePrompt lua require('cmp').setup.buffer { enabled = false }
--]]

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  
    sources = {
        { name = 'buffer' },
    },
}),

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  
    sources = cmp.config.sources({
        { name = 'path' },
        { name = 'cmdline' },
    }),
})

--[[
-- customizing appearance
-- nvim-cmp highlight groups
local Group = require('colorbuddy.group').Group
local g = require('colorbuddy.group').groups
local s = require('colorbuddy.style').styles

Group.new('CmpItemAbbr', g.Comment)
Group.new('CmpItemAbbrDeprecated', g.Error)
Group.new('CmpItemAbbrMatchFuzzy', g.CmpItemAbbr.fg:dark(), nil, s.italic)
Group.new('CmpItemKind', g.Special)
Group.new('CmpItemMenu', g.NonText)
--]]

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Require the LSPs
require'lspconfig'.pyright.setup {
  capabilities = capabilities,
}
require'lspconfig'.bashls.setup {
  capabilities = capabilities,
}
require'lspconfig'.texlab.setup {
  capabilities = capabilities,
}
