local M = {}

M.setup = function()
  local groups = require("seoul256.groups")
  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end
end

return M
