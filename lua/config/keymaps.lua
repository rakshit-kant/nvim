-- =========================================================
-- Split Navigation
-- Move between splits using Ctrl + hjkl
-- =========================================================

vim.keymap.set("n", "<C-h>", "<C-w>h", {
  desc = "Move to left split",
})

vim.keymap.set("n", "<C-j>", "<C-w>j", {
  desc = "Move to bottom split",
})

vim.keymap.set("n", "<C-k>", "<C-w>k", {
  desc = "Move to top split",
})

vim.keymap.set("n", "<C-l>", "<C-w>l", {
  desc = "Move to right split",
})

-- =========================================================
-- Split Creation
-- =========================================================

vim.keymap.set("n", "<leader>sv", "<C-w>v", {
  desc = "Create vertical split",
})

vim.keymap.set("n", "<leader>sh", "<C-w>s", {
  desc = "Create horizontal split",
})

-- =========================================================
-- Split Management
-- =========================================================

vim.keymap.set("n", "<leader>se", "<C-w>=", {
  desc = "Equalize split sizes",
})

vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", {
  desc = "Close current split",
})

-- =========================================================
-- Quick Motions
-- =========================================================

-- First Character in Line (Non-Whitespace)
vim.keymap.set({ "n", "v" }, "gh", "^")

-- Last Character in Line
vim.keymap.set({ "n", "v" }, "gl", "$")
