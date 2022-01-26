-- automatically install and set up packer.nvim on any machine you clone your configuration to,
-- following snippet (which is due to @Iron-E and @khuedoan) is needed somewhere in your config
-- before your first usage of packer
--local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Syntax highlighting with Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Sql
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-completion'
    use 'kristijanhusak/vim-dadbod-ui'

    -- Status line & Buffer line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'akinsho/bufferline.nvim', 
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Indentation guides
    use "lukas-reineke/indent-blankline.nvim"


    -- Intellisense (LSP & Autocompletion)
    use 'neovim/nvim-lspconfig'
    --use 'hrsh7th/nvim-compe' deprecated
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'  -- 01/2022: fails to update, maybe leave out, or replace 

    use 'onsails/lspkind-nvim'
    use 'windwp/nvim-autopairs'
    -- Colorscheme
    use { "ellisonleao/gruvbox.nvim" }
    --use 'Mofiqul/vscode.nvim'
    --use 'tomasr/molokai'
    --use 'tjdevries/colorbuddy.nvim'


    -- Jupyter integration
    use 'bfredl/nvim-ipy'

    --------------------------------
    -- packages to try out / install
    -- -----------------------------
    --[[
    
    -- Better start screen --
    use {'mhinz/vim-startify'}

      -- Indentation --
    use 'tpope/vim-sleuth'

      -- Git --
    use 'tpope/vim-fugitive'
    use 'mhinz/vim-signify'

      -- Sql.nvim --
    use 'tami5/sql.nvim'

      -- Telescope --
    use {'nvim-telescope/telescope.nvim', requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzy-native.nvim',
        'nvim-telescope/telescope-fzf-writer.nvim',
        'nvim-telescope/telescope-symbols.nvim',
        'nvim-telescope/telescope-frecency.nvim',
    }}

    --]]



    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
