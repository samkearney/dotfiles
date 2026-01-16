return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          { "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", desc = "Display Diagnostic Info" },
        },
      },
    },
  },
}
