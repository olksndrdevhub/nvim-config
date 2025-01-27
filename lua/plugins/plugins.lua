return {
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    enabled = true,
    version = "1.8.37",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-a>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },
  -- {
  --   "frankroeder/parrot.nvim",
  --   dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
  --   -- optionally include "rcarriga/nvim-notify" for beautiful notifications
  --   config = function()
  --     require("parrot").setup({
  --       -- Providers must be explicitly added to make them available.
  --       providers = {
  --         anthropic = {
  --           api_key = os.getenv("ANTHROPIC_API_KEY"),
  --         },
  --         openai = {
  --           api_key = os.getenv("OPENAI_API_KEY"),
  --         },
  --       },
  --     })
  --   end,
  -- },
}
