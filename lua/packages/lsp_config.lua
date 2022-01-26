
-- Keymappings using vim.api.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options})
local keymap = vim.api.nvim_set_keymap

-- LSP config (keymappings used in the default file don't quite work right)
local opts = { noremap = true }
keymap('n', 'gd', 'vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gD', 'vim.lsp.buf.declaration()<CR>', opts)
keymap('n', 'gr', 'vim.lsp.buf.references()<CR>', opts)
keymap('n', 'gi', 'vim.lsp.buf.implementation()<CR>', opts)
keymap('n', 'K', 'vim.lsp.buf.hover()<CR>', opts)
keymap('n', '<C-k>', 'vim.lsp.buf.signature_help()<CR>', opts)
keymap('n', '<C-n>', 'vim.lsp.diagnostics.goto_prev()<CR>', opts)
keymap('n', '<C-p>', 'vim.lsp.diagnostics.goto_next()<CR>', opts)

-- Autoformat
-- vim.api.nvim_command('autocmd BufWritePre *.py')
-- vim.lsp.buf.formatting_sync(nil, 100)













