return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {
        filetypes = {
          "html",
          "htmldjango",
          "javascript",
        },
      },
      cssls = {},
      tailwindcss = {},
      golsp = {
        opts = {
          cmd = { "gopls" },
          filetypes = { "go", "gomod", "gowork", "gotmpl", "templ", "tmpl" },
          root_dir = function(fname)
            return require("lspconfig").util.root_pattern("go.work", "go.mod", ".git")(fname) or vim.fn.getcwd()
          end,
        },
      },
    },
    setup = {
      -- ruff = function()
      --   require("lazyvim.util").lsp.on_attach(function(client, _)
      --     if client.name == "ruff" then
      --       -- Disable hover in favor of Pyright
      --       client.server_capabilities.hoverProvider = false
      --     end
      --   end)
      -- end,
      -- desc = "LSP: Disable hover capability from Ruff",
    },
    ensure_installed = {
      "lua_ls",
      -- "ruff", -- linter and formatter for python (includes flake8, pep8, etc.)
      "pyright", -- LSP for python
      "debugpy", -- debugger
      "isort", -- organize imports
      "taplo", -- LSP for toml (for pyproject.toml files)
    },
  },
}
