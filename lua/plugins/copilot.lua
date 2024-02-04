return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    suggestion = { enabled = true },
    panel = { enabled = false },
    filetypes = {
      python = true,
      javascript = true,
      html = true,
      css = true,
      lua = true,
    },
  },
}
