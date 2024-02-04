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
      pyright = {},
      ruff_lsp = {
        keys = {
          {
            "<leader>co",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.organizeImports" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Organize Imports",
          },
        },
      },
    },
    setup = {
      ruff_lsp = function()
        require("lazyvim.util").lsp.on_attach(function(client, _)
          if client.name == "ruff_lsp" then
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
          end
        end)
      end,
    },
    ensure_installed = {
      "lua_ls",
      "pyright", -- LSP for python
      "ruff-lsp", -- linter for python (includes flake8, pep8, etc.)
      "debugpy", -- debugger
      "black", -- formatter
      "isort", -- organize imports
      "taplo", -- LSP for toml (for pyproject.toml files)
    },
  },
}
