return {
  -- Rails-specific plugin by tpope
  {
    'tpope/vim-rails',
    lazy = true,
    ft = { 'ruby', 'eruby' },
  },

  -- Bundler support
  {
    'tpope/vim-bundler',
    lazy = true,
    ft = { 'ruby', 'eruby' },
  },

  -- Automatically close Ruby blocks with `end`
  {
    'tpope/vim-endwise',
    lazy = true,
  },

  -- LSP for Ruby (using Solargraph)
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').solargraph.setup {
        cmd = { 'solargraph', 'stdio' },
        filetypes = { 'ruby' },
        root_dir = require('lspconfig/util').root_pattern('Gemfile', '.git'),
      }
    end,
  },

  -- Linting and formatting (null-ls with RuboCop)
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local null_ls = require 'null-ls'
      null_ls.setup {
        sources = {
          null_ls.builtins.diagnostics.rubocop,
          null_ls.builtins.formatting.rubocop,
        },
      }
    end,
  },

  -- Testing support for Rails
  {
    'vim-test/vim-test',
    config = function()
      vim.cmd [[
        let test#strategy = 'neovim'
      ]]
    end,
  },
}
