-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.diffopt = 'internal,filler,closeoff,linematch:40,followwrap'
vim.lsp.set_log_level("trace")

local ssh_conn = os.getenv("SSH_CONNECTION")
local tmux = os.getenv("TMUX")
local devc = os.getenv("IS_DEVCONTAINER")

if (ssh_conn and ssh_conn ~= "") or (tmux and tmux ~= "") or (devc and devc ~= "") then
  vim.opt.mouse = 'nvi'
  vim.g.clipboard = 'osc52'
end
