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
      "ruff-lsp", -- linter for python (includes flake8, pep8, etc.)
      "debugpy", -- debugger
      "black", -- formatter
      "isort", -- organize imports
      "taplo", -- LSP for toml (for pyproject.toml files)
    },
  },
}
