-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "html", "htmldjango" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
--   pattern = "*",
--   callback = function()
--     if vim.bo.filetype == "py" then
--       vim.cmd.colorscheme("tokyonight")
--     elseif vim.bo.filetype == "plaintex" then
--       vim.cmd.colorscheme("catppucin")
--     elseif vim.bo.filetype == "html" then
--       vim.cmd.colorscheme("dracula")
--     else
--       vim.cmd.colorscheme("tokyonight")
--     end
--   end,
-- })
