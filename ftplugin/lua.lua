vim.opt_local.autoindent = true
vim.opt_local.smartindent = true
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.expandtab = true

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'lua',
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<leader>x', ':w<CR>:source<CR>', { noremap = true, silent = true })
  end,
})

function test()
  -- print 'this is a test -8'
end

test()
