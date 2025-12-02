local HOME = os.getenv("HOME")

return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        markdownlint = {
          args = { "--disable", "MD013", "--" },
        },
        ["markdownlint-cli2"] = {
          args = { "--config", HOME .. "/.config/nvim/.markdownlint-cli2.yaml" },
        },
      },
    },
  },
}
