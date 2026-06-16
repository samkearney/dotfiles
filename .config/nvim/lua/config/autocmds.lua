-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Wrap comments at 100 columns in every filetype; never auto-wrap code/prose.
-- Prose filetypes are excluded: their text is not a comment, and several of them
-- define list/blockquote markers (e.g. markdown's `comments=fb:*,fb:-,fb:+,n:>`)
-- as comment leaders, so the `c` flag would wrap bullets and quotes as if they
-- were code comments. gitcommit's own ftplugin also manages 72-column wrapping.
local skip_textwidth = {
  gitcommit = true,
  markdown = true,
  text = true,
  asciidoc = true,
  rst = true,
  org = true,
  tex = true,
  plaintex = true,
  mail = true,
}

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("comment_textwidth", { clear = true }),
  callback = function(ev)
    if skip_textwidth[vim.bo[ev.buf].filetype] then
      return
    end
    vim.opt_local.textwidth = 100
    vim.opt_local.formatoptions:append("croqj") -- wrap/continue comments, gq, clean joins
    vim.opt_local.formatoptions:remove("t") -- don't auto-wrap plain text/code, only comments
  end,
})
