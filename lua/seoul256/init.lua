local util = require("seoul256.util")

local M = { groups = {} }
local groups = {
  "treesitter",
  "lsp",
  "gitsigns",
  "syntax",
  "ui",
  "spell",
  "rainbow",
  "todo",
  "diagnostics",
  "todo-txt",
  "indent-blankline",
  "cmp",
  "mini",
  "diff",
}

-- Reset highlights
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end

-- Mark colorscheme name
vim.g["util.colors_name"] = "seoul256"

vim.g.seoul256_current_fg = ({ util.dark_fg, util.light_fg })[util.style_idx + 1]
vim.g.seoul256_current_bg = ({ util.dark_bg, util.light_bg })[util.style_idx + 1]
vim.g["util.colors_name"] = "seoul256"

if
  util.colors_name ~= vim.g["util.colors_name"]
  or util.background == util.style
then
  vim.o.background = util.style
else
  vim.o.background = util.background
end

vim.g.ruby_operators = 1
vim.g.indent_guides_auto_colors = 0

-- vim.api.nvim_create_autocmd("LspTokenUpdate", {
--   callback = function(args)
--     local token = args.data.token
--     if token.type == "variable" and not token.modifiers.readonly then
--       vim.lsp.semantic_tokens.highlight_token(
--         token,
--         args.buf,
--         args.data.client_id,
--         "MyMutableVariableHighlight"
--       )
--     end
--   end,
-- })

M.setup = function()
  for _, module in ipairs(groups) do
    local ok, tbl = pcall(require, "seoul256.groups." .. module)
    if ok and type(tbl) == "table" then
      M.groups = vim.tbl_extend("force", M.groups, tbl)
    end
  end

  for group, setting in pairs(M.groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end
end

return M
