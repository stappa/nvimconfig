vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("i", "<C-f>", "<Right>")
vim.keymap.set("i", "<C-b>", "<Left>")

vim.keymap.set("n", "<leader>=", "<C-a>")
vim.keymap.set("n", "<leader>-", "<C-x>")

vim.keymap.set("n", "<leader>[", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<leader>]", "<cmd>bnext<cr>")
vim.keymap.set("n", "<C-9>", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<C-0>", "<cmd>bnext<cr>")

vim.keymap.set("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
end)

vim.keymap.set("n", "<leader>s", "<cmd>write<cr>")

vim.keymap.set("n", "<leader>j", "<C-w><C-h>")
vim.keymap.set("n", "<leader>k", "<C-w><C-l>")
vim.keymap.set("n", "<leader>w", "<C-w><C-w>")
vim.keymap.set("n", "<leader>q", "<cmd>bd<cr>")
