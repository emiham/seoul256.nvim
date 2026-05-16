local util = require("seoul256.util")
local colors = require("seoul256/colors")

return {
  DiffAdd = colors.diff_add,
  DiffDelete = colors.diff_del,
  -- DiffMinus = util.hi({ 0, 0 }, { 95, 181 }),
  DiffChange = colors.none_,
  -- diffAdded = util.hi({ 108, 65 }, { 0, 0 }),
  -- diffRemoved = util.hi({ 174, 131 }, { 0, 0 }),
  -- diffLine = { link = "Constant" },
  DiffText = colors.selection_,
}
