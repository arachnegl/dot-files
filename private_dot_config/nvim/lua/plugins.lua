-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    --  Collection of common configurations for the Nvim LSP client
    use 'neovim/nvim-lspconfig'

    --  Completion framework
    use 'hrsh7th/nvim-cmp'

    --  LSP completion source for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'

    --  Snippet completion source for nvim-cmp
    use 'hrsh7th/cmp-vsnip'

    --  Other usefull completion sources
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'

    --  See hrsh7th's other plugins for more completion sources!

    --  To enable more of the features of rust-analyzer, such as inlay hints and more!
    use 'simrat39/rust-tools.nvim'

    --  Snippet engine
    use 'hrsh7th/vim-vsnip'

    --  Fuzzy finder
    --  Optional
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    --  Color scheme used in the GIFs!
    --  use 'arcticicestudio/nord-vim'



    use 'tjdevries/train.nvim'
    use 'wbthomason/packer.nvim'  -- Packer can manage itself
    use 'voldikss/vim-floaterm'

    -- Lazy loading:
    -- Load on specific commands
    use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

    -- Load on an autocommand event
    use {'andymass/vim-matchup', event = 'VimEnter'}

    use {
	'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate python' }


    -- You can alias plugin names
    use {'dracula/vim', as = 'dracula'}

end)

