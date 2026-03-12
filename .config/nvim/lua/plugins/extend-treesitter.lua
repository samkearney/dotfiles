return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        enable = true,
        disable = { "yaml" }, -- Treesitter's indent module for YAML causes weird indentation behavior with comments
      },
    },
  },
}
