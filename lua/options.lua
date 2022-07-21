-- ------------------------
-- Global options (vim.o/vim.g)--
-- ------------------------
vim.o.termguicolors = true
vim.o.syntax = 'on'
vim.o.errorbells = false
vim.o.smartcase = true
vim.o.showmode = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.incsearch = true
vim.o.hidden = true
vim.o.completeopt='menuone,noinsert,noselect'
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true


vim.o.scrolloff = 10

vim.o.splitbelow = true
vim.o.splitright = true


--vim.o.mouse = 'a'
vim.o.mouse = 'v'

-- set colorscheme
--vim.g.colors_name = 'vscode'
--vim.g.colors_name = 'molokai'

--vim.g.clipboard = 'unnamedplus'

-- ----------------------------------
-- Local options to window (vim.wo)--
-- ----------------------------------
vim.wo.number = true 
vim.wo.cursorline = true
vim.wo.cursorcolumn = true

--vim.wo.relativenumber = true
--vim.wo.signcolumn = 'number'
vim.wo.wrap = false
 
-- ---------------------------------- 
-- Local options to buffer (vim.bo)--
-- ----------------------------------

vim.bo.swapfile = false
vim.bo.autoindent = true
vim.bo.smartindent = true


