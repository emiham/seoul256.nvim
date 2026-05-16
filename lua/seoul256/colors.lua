local rgb_map = require("seoul256.rgb_map")
local util = require("seoul256.util")

local c = {}

c.black = util.hi({ 239, 239 }, { 0, 0 })
c.red = util.hi({ 1, 1 }, { 0, 0 })
c.green = util.hi({ 2, 2 }, { 0, 0 })
c.yellow = util.hi({ 3, 3 }, { 0, 0 })
c.blue = util.hi({ 4, 4 }, { 0, 0 })
c.magenta = util.hi({ 5, 5 }, { 0, 0 })
c.cyan = util.hi({ 6, 6 }, { 0, 0 })
c.white = util.hi({ 7, 7 }, { 0, 0 })

c.bright_black = util.hi({ 8, 8 }, { 0, 0 })
c.bright_red = util.hi({ 9, 9 }, { 0, 0 })
c.bright_green = util.hi({ 10, 10 }, { 0, 0 })
c.bright_yellow = util.hi({ 11, 11 }, { 0, 0 })
c.bright_blue = util.hi({ 12, 12 }, { 0, 0 })
c.bright_magenta = util.hi({ 13, 13 }, { 0, 0 })
c.bright_cyan = util.hi({ 14, 14 }, { 0, 0 })
c.bright_white = util.hi({ 15, 15 }, { 0, 0 })

c.dark_fg = util.hi({ 252, 252 }, { 0, 0 })

c.normal = util.hi(
  { util.dark_fg, util.light_fg },
  { util.dark_bg, util.light_bg }
)
c.conceal = util.hi(
  { util.dark_fg + 2, util.light_fg - 2 },
  { util.dark_bg - 1, util.light_bg + 2 }
)
c.ignore = util.hi(
  { util.dark_bg + 3, util.light_bg - 3 },
  { util.dark_bg, util.light_bg }
)

c.line_numbers = util.hi({ 101, 101 }, { util.dark_bg + 1, util.light_bg - 2 })
c.line_numbers_fg = util.hi({ 101, 101 }, { 0, 0 })
c.selection = rgb_map[23]
c.selection_ = { bg = rgb_map[23] }

c.comment = util.hi({ 65, 65 }, { 0, 0 })
c.number = util.hi({ 222, 95 }, { 0, 0 })
c.float = util.hi({ 222, 95 }, { 0, 0 })
c.boolean = util.hi({ 103, 168 }, { 0, 0 })
c.string_ = util.hi({ 109, 30 }, { 0, 0 })
c.constant = util.hi({ 73, 23 }, { 0, 0 })
c.character = util.hi({ 174, 168 }, { 0, 0 })
c.delimiter = util.hi({ 137, 94 }, { 0, 0 })
c.string_delimiter = util.hi({ 137, 94 }, { 0, 0 })
c.statement = util.hi({ 108, 66 }, { 0, 0 })

c.conditional = util.hi({ 110, 31 }, { 0, 0 })
c.match_paren = vim.tbl_extend(
  "error",
  { fg = "NONE", bg = "NONE" },
  { bold = true }
)

c.repeat_ = util.hi({ 68, 67 }, { 0, 0 })
c.todo = util.hi({ 161, 125 }, { 0, 0 })
c.function_ = util.hi({ 187, 58 }, { 0, 0 })
c.method = util.hi({ 187, 58 }, { 0, 0 })
c.constructor = util.hi({ 187, 58 }, { 0, 0 })

c.macro = util.hi({ 173, 131 }, { 0, 0 })

c.preProc = util.hi({ 143, 58 }, { 0, 0 })
c.identifier = util.hi({ 217, 96 }, { 0, 0 })
c.type = util.hi({ 179, 94 }, { 0, 0 })
c.module = util.hi({ 179, 94 }, { 0, 0 })
c.operator = util.hi({ 186, 131 }, { 0, 0 })
c.keyword = util.hi({ 10, 10 }, { 0, 0 })
c.return_ = util.hi({ 168, 168 }, { 0, 0 })
c.exception = util.hi({ 161, 161 }, { 0, 0 })
c.structure = util.hi({ 116, 23 }, { 0, 0 })
c.enum = util.hi({ 116, 23 }, { 0, 0 })
c.error = util.hi({ 168, 168 }, { 0, 0 })
c.warn = util.hi({ 179, 179 }, { 0, 0 })
c.info = util.hi({ 74, 74 }, { 0, 0 })
c.hint = util.hi({ 186, 186 }, { 0, 0 })
c.ok = util.hi({ 108, 108 }, { 0, 0 })
c.errormsg = util.hi({ 168, 168 }, { 0, 0 })
c.underlined = util.hi({ 181, 168 }, { 0, 0 })
c.special = util.hi({ 216, 173 }, { 0, 0 })

c.preproc_define = rgb_map[230]
c.define = rgb_map[173]
c.deprecated = rgb_map[244]
c.match = rgb_map[38]
c.class = util.hi({ 31, 31 }, { 0, 0 })
c.variable = util.hi({ 224, 224 }, { 0, 0 })
c.member = util.hi({ 224, 224 }, { 0, 0 })
c.variable_builtin = rgb_map[224]
c.property_ = util.hi({ 224, 224 }, { 0, 0 })

c.builtin = util.hi({ 184, 184 }, { 0, 0 })
c.default_library = rgb_map[185]

c.diff_add = { bg = rgb_map[2] }
c.diff_del = { fg = rgb_map[8] }
c.diff_change = { bg = rgb_map[8] }

c.none = "NONE"
c.none_ = { fg = "NONE", bg = "NONE" }
c.clear = util.hi({ 0, 0 }, { 0, 0 })
c.link = vim.tbl_extend(
  "error",
  { fg = rgb_map[24], bg = "NONE" },
  { underline = true }
)

c.border = util.hi({ 8, 8 }, { 0, 0 })

return c
