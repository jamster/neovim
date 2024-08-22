-- ~/.config/nvim/ftplugin/go.lua

-- Set indentation for Go files
vim.opt_local.autoindent = true
vim.opt_local.smartindent = true
vim.opt_local.expandtab = true
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4

-- Auto-format on save using LSP (if configured)
local lsp_format_augroup = vim.api.nvim_create_augroup('LspFormat', { clear = true })
vim.api.nvim_create_autocmd('BufWritePre', {
  group = lsp_format_augroup,
  pattern = '*.go',
  callback = function()
    print 'doing it'
    vim.lsp.buf.format()
  end,
})

function test()
  print 'doing this in gothis is a test -9'
end

test()
