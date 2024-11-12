-- return {
--   "linux-cultist/venv-selector.nvim",
--   cmd = "VenvSelect",
--   opts = function(_, opts)
--     opts.anaconda_envs_path = "~/miniconda3/envs"
--     opts.anaconda_base_path = "~/miniconda3"
--     if require("lazyvim.util").has("nvim-dap-python") then
--       opts.dap_enabled = true
--     end
--     return vim.tbl_deep_extend("force", opts, {
--       name = {
--         "venv",
--         ".venv",
--         "env",
--         ".env",
--       },
--     })
--   end,
--   keys = {
--     { "<leader>vv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" },
--     { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Select Cached VirtualEnv" },
--   },
-- }
return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python", --optional
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  lazy = false,
  branch = "regexp", -- This is the regexp branch, use this for the new version
  config = function()
    require("venv-selector").setup()
  end,
  keys = {
    { "<leader>vv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" },
    { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Select Cached VirtualEnv" },
  },
}
