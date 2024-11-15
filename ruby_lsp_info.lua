require('lspconfig').solargraph.setup {
  cmd = { 'solargraph', 'stdio' },
  filetypes = { 'ruby' },
  root_dir = require('lspconfig/util').root_pattern('Gemfile', '.git'),
}
