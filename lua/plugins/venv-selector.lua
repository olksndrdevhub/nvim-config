return {
  "linux-cultist/venv-selector.nvim",
  cmd = "VenvSelect",
  opts = function(_, opts)
    opts.anaconda_envs_path = "~/miniconda3/envs"
    opts.anaconda_base_path = "~/miniconda3"
    if require("lazyvim.util").has("nvim-dap-python") then
      opts.dap_enabled = true
    end
    return vim.tbl_deep_extend("force", opts, {
      name = {
        "venv",
        ".venv",
        "env",
        ".env",
      },
    })
  end,
  keys = {
    { "<leader>vv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" },
    { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Select Cached VirtualEnv" },
  },
}
