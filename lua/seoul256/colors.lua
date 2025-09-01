local rgb_map = require("seoul256.rgb_map")
util = require("seoul256.util")

return {
  black = util.hi({ 239, 239 }, { 0, 0 }),
  red = util.hi({ 1, 1 }, { 0, 0 }),
  green = util.hi({ 2, 2 }, { 0, 0 }),
  yellow = util.hi({ 3, 3 }, { 0, 0 }),
  blue = util.hi({ 4, 4 }, { 0, 0 }),
  magenta = util.hi({ 5, 5 }, { 0, 0 }),
  cyan = util.hi({ 6, 6 }, { 0, 0 }),
  white = util.hi({ 7, 7 }, { 0, 0 }),

  bright_black = util.hi({ 8, 8 }, { 0, 0 }),
  bright_red = util.hi({ 9, 9 }, { 0, 0 }),
  bright_green = util.hi({ 10, 10 }, { 0, 0 }),
  bright_yellow = util.hi({ 11, 11 }, { 0, 0 }),
  bright_blue = util.hi({ 12, 12 }, { 0, 0 }),
  bright_magenta = util.hi({ 13, 13 }, { 0, 0 }),
  bright_cyan = util.hi({ 14, 14 }, { 0, 0 }),
  bright_white = util.hi({ 15, 15 }, { 0, 0 }),

  dark_fg = util.hi({ 252, 252 }, { 0, 0 }),

  normal = util.hi(
    { util.dark_fg, util.light_fg },
    { util.dark_bg, util.light_bg }
  ),
  conceal = util.hi(
    { util.dark_fg + 2, util.light_fg - 2 },
    { util.dark_bg - 1, util.light_bg + 2 }
  ),
  ignore = util.hi(
    { util.dark_bg + 3, util.light_bg - 3 },
    { util.dark_bg, util.light_bg }
  ),

  line_numbers = util.hi(
    { 101, 101 },
    { util.dark_bg + 1, util.light_bg - 2 }
  ),
  selection = rgb_map[23],

  comment = util.hi({ 65, 65 }, { 0, 0 }),
  number = util.hi({ 222, 95 }, { 0, 0 }),
  float = util.hi({ 222, 95 }, { 0, 0 }),
  boolean = util.hi({ 103, 168 }, { 0, 0 }),
  string_ = util.hi({ 109, 30 }, { 0, 0 }),
  constant = util.hi({ 73, 23 }, { 0, 0 }),
  character = util.hi({ 174, 168 }, { 0, 0 }),
  delimiter = util.hi({ 137, 94 }, { 0, 0 }),
  string_delimiter = util.hi({ 137, 94 }, { 0, 0 }),
  statement = util.hi({ 108, 66 }, { 0, 0 }),

  conditional = util.hi({ 110, 31 }, { 0, 0 }),
  match_paren = util.hi({ 0, 0 }, { util.dark_bg + 3, util.light_bg - 3 }),

  repeat_ = util.hi({ 68, 67 }, { 0, 0 }),
  todo = util.hi({ 161, 125 }, { 0, 0 }),
  function_ = util.hi({ 187, 58 }, { 0, 0 }),

  macro = util.hi({ 173, 131 }, { 0, 0 }),

  preProc = util.hi({ 143, 58 }, { 0, 0 }),
  identifier = util.hi({ 217, 96 }, { 0, 0 }),
  type = util.hi({ 179, 94 }, { 0, 0 }),
  operator = util.hi({ 186, 131 }, { 0, 0 }),
  keyword = util.hi({ 10, 10 }, { 0, 0 }),
  return_ = util.hi({ 168, 168 }, { 0, 0 }),
  exception = util.hi({ 161, 161 }, { 0, 0 }),
  structure = util.hi({ 116, 23 }, { 0, 0 }),
  error = util.hi({ util.dark_fg, util.light_bg_1 }, { 52, 174 }),
  errormsg = util.hi({ util.dark_fg, util.light_bg_1 }, { 52, 168 }),
  underlined = util.hi({ 181, 168 }, { 0, 0 }),
  special = util.hi({ 216, 173 }, { 0, 0 }),

  preproc_define = rgb_map[230],
  define = rgb_map[173],
  deprecated = rgb_map[244],
  match = rgb_map[38],
  class = util.hi({ 31, 31 }, { 0, 0 }),
  variable = util.hi({ 224, 224 }, { 0, 0 }),
  variable_builtin = rgb_map[224],

  builtin = rgb_map[186],
  default_library = rgb_map[185],

  none = "NONE",
  none_ = { fg = "NONE", bg = "NONE" },
  clear = util.hi({ 0, 0 }, { 0, 0 }),
}
