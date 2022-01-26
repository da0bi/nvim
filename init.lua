-- --------------------------------------------- --
-- Import general nvim configurations from ./lua --
-- --------------------------------------------- --
require('options')
require('keymaps')
require('packages')


-- ------------------------------------------------------ --
-- Import package configuration files from ./lua/packages --
-- ------------------------------------------------------ --
--require('packages/vscode')
require('packages/gruvbox')
require('packages/lualine')
require('packages/bufferline')
require('packages/indent_blankline')
require('packages/treesitter')
require('packages/lsp_config')
require('packages/cmp_config_ed')
require('packages/autopairs_config')
require('packages/ipy')


