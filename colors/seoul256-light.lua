local custom_bg = vim.g.seoul256_light_background
  or vim.g.seoul256_background
  or 253

local light = custom_bg >= 252 and custom_bg <= 256

local var_found = vim.g.seoul256_background ~= nil
local light_var_found = vim.g.seoul256_light_background ~= nil

local backup
-- Backup current g:seoul256_background
if var_found then backup = vim.g.seoul256_background end

-- Invalid range. Force the default light version.
if not light and var_found then vim.g.seoul256_background = nil end

-- g:seoul256_light_background is found, use it
if light and light_var_found then vim.g.seoul256_background = custom_bg end

if vim.g.colors_name == "seoul256-light" and vim.o.background == "dark" then
  vim.o.background = "dark"
else
  vim.o.background = "light"
end

vim.g.colors_name = "seoul256"
require("seoul256").setup()
vim.g.colors_name = (vim.o.background == "dark") and "seoul256"
  or "seoul256-light"

-- Finally, restore g:seoul256_background if it was originally set
if var_found then vim.g.seoul256_background = backup end
