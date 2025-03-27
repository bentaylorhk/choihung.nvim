-- Benjamin Michael Taylor (bentaylorhk)
-- 2025

-- Only load if the colorscheme hasn't been set already
if vim.g.colors_name then
  vim.cmd("hi clear")
end

vim.g.colors_name = "kowloon.nvim"
require("kowloon.nvim").setup()
