-- ========================================================
-- Global Settings
-- ========================================================

vim.opt.clipboard = "unnamedplus"

-- Python
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.lazyvim_python_ruff = "ruff"

-- =========================================================
-- Global Indentation Settings
-- Default fallback indentation for files
-- =========================================================

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- =========================================================
-- Split Behavior
-- Open splits in sane directions
-- =========================================================

vim.opt.splitright = true
vim.opt.splitbelow = true

-- =========================================================
-- C Language Settings
-- Use real tabs for C
-- =========================================================

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false
  end,
})

-- =========================================================
-- Rust Settings
-- Rust style prefers spaces
-- =========================================================

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

-- =========================================================
-- JavaScript / TypeScript / React
-- Standard frontend indentation = 2 spaces
-- =========================================================

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
  },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- =========================================================
-- HTML / CSS
-- Standard web indentation = 2 spaces
-- =========================================================

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "css" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})
