-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local nvim_lsp = require("lspconfig")

nvim_lsp.rust_analyzer.setup({
  cmd = { "/Users/sam/.cargo/bin/rust-analyzer" },
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true,
      },
    },
  },
})
