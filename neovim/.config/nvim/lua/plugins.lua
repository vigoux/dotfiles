-- vim: et
return require"packer".startup(function(use)
  use {'wbthomason/packer.nvim', opt = true}

  -- Basic
  use 'junegunn/fzf.vim'
  use 'editorconfig/editorconfig-vim'

  -- Running things
  use {'tpope/vim-dispatch', opt = true, keys = {'m<CR>', '`<CR>'}, cmd = {'Make', 'Dispatch'}}
  use {'michaelb/sniprun', opt = true, cmd = { 'SnipRun' }, run = './install.sh' }

  -- tpope <3
  use 'tpope/vim-obsession'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'

  -- LSP related
  use {
    'nvim-lua/completion-nvim',
    requires = {
        'hrsh7th/vim-vsnip',
        'hrsh7th/vim-vsnip-integ',
        'neovim/nvim-lspconfig'
    }
  }
  use 'nvim-lua/lsp-status.nvim'

  -- Treesitter related
  use '~/src/plugins/nvim-treesitter'
  use 'nvim-treesitter/completion-treesitter'
  use 'nvim-treesitter/nvim-tree-docs'
  use 'nvim-treesitter/playground'

  -- Filetypes
  use 'cespare/vim-toml'

  -- Git and version control
  use 'tpope/vim-fugitive'
  use {'stsewd/fzf-checkout.vim', cmd = {"GCheckout"}}

  -- Mine
  use {'vigoux/templar.nvim'}
  use {'vigoux/LanguageTool.nvim', opt = true, cmd = 'LanguageToolSetUp'}

  -- Misc
  use 'vim-conf-live/pres.vim'

  -- One true colorscheme
  use {'dracula/vim', as = 'dracula'}
end)
