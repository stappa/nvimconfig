local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'eslint'
})

vim.keymap.set('n', '<space>dd', vim.diagnostic.open_float)
vim.keymap.set('n', '<space>dn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>dp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<space>e', '<cmd>EslintFixAll<cr>')

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>lt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>lf', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

vim.lsp.set_log_level("debug")

lsp.setup()

vim.diagnostic.config({
  virtual_text = true
})
