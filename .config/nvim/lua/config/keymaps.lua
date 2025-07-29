-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Make vim not respond to selecting text with the mouse.
-- This enables selecting text via the terminal for copy/paste
-- vim.keymap.set('', '<LeftDrag>', '')
-- vim.keymap.set('', '<LeftRelease>', '')

vim.keymap.set({'n', 'v'}, '<leader>cd', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled({ bufnr = 0 }), { bufnr = 0 })
end, {
  desc = "Toggle LSP diagnostics on/off for the current buffer"
})

vim.keymap.set({'n', 'v'}, '<leader>cD', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, {
  desc = "Toggle LSP diagnostics on/off globally"
})

vim.keymap.set({'n', 'v'}, '<leader>cg', function()
  vim.api.nvim_set_hl(0, '@lsp.type.comment.cpp', {})
end, {
  desc = "Turn off C/C++ ifdef graying"
})
