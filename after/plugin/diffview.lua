vim.keymap.set("n", "<leader>gD", "<CMD>DiffviewOpen<CR>")
-- vim.keymap.set("n", "<leader>gd", "<CMD>DiffviewOpen -- %<CR>")
vim.keymap.set("n", "<leader>gq", "<CMD>DiffviewClose<CR>")
vim.keymap.set("n", "<leader>gh", "<CMD>DiffviewFileHistory<CR>")

local actions = require("diffview.actions")

require("diffview").setup({
  default_args = {
    DiffviewOpen = { "--untracked-files=no" },
    DiffviewFileHistory = {},
  }
})
