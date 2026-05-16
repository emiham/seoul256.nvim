local util = require("seoul256.util")

return {
  SpellBad = vim.tbl_extend(
    "error",
    util.hi({ 168, 125 }, { 0, 0 }),
    { undercurl = true }
  ),
  SpellCap = vim.tbl_extend(
    "error",
    util.hi({ 110, 25 }, { 0, 0 }),
    { undercurl = true }
  ),
  SpellLocal = vim.tbl_extend(
    "error",
    util.hi({ 153, 31 }, { 0, 0 }),
    { undercurl = true }
  ),
  SpellRare = vim.tbl_extend(
    "error",
    util.hi({ 218, 96 }, { 0, 0 }),
    { undercurl = true }
  ),
}
