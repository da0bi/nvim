-- set mapleader key
vim.g.mapleader = ' '


-- Keymappings using vim.api.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options})
local keymap = vim.api.nvim_set_keymap
keymap('i', ':w', '<Esc>:w<CR>a', {})

-- Switch to open windows
local opts = { noremap = true }
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- code execution in nvim
--vim.cmd[[
--augroup exe_code
--    autocmd!
--
--    " execute python code
--    autocmd FileType python nnoremap <buffer> <leader>r :sp<CR> :term python3 %<CR> :startinsert<CR> 
--
--    " execute bash code
--    autocmd FileType bash, sh nnoremap <buffer> <leader>r :sp<CR> :term bash %<CR> :startinsert<CR> 
--
--augroup END
--]] 
