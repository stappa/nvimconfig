local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

require('telescope').setup({
  defaults = {
    layout_config = {
      vertical = { width = 1 },
      horizontal = { width = 0.95, height = 0.95 }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here
})
