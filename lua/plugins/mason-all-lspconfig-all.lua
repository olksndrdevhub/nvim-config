return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "gopls",
      },
    },
  },
  "williamboman/mason-lspconfig.nvim",
}
