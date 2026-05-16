local colors = require("seoul256/colors")
local util = require("seoul256.util")

return {
  LineNr = colors.line_numbers,
  -- SignColumn = util.hi({ 173, 173 }, { util.dark_bg + 1, util.light_bg - 2 }),
  SignColumn = util.hi({ 173, 173 }, { util.dark_bg, util.light_bg }),

  Visual = util.hi({ 0, 0 }, { 23, 152 }),
  VisualNOS = util.hi({ 0, 0 }, { 23, 152 }),
  ColorColumn = util.hi({ 0, 0 }, { util.dark_bg - 1, util.light_bg - 2 }),
  CursorLine = vim.tbl_extend(
    "error",
    util.hi({ 0, 0 }, { util.dark_bg - 1, util.light_bg - 1 }),
    { cterm = {} }
  ),
  CursorLineNr = vim.tbl_extend(
    "error",
    util.hi({ 131, 131 }, { util.dark_bg - 1, util.light_bg - 1 }),
    { cterm = {} }
  ),
  CursorColumn = util.hi({ 0, 0 }, { util.dark_bg - 1, util.light_bg - 1 }),
  NormalFloat = util.hi({ 0, 0 }, { util.dark_bg - 1, util.light_bg - 1 }),

  Directory = util.hi({ 187, 95 }, { 0, 0 }),
  VertSplit = util.hi(
    { util.dark_bg_2, util.light_bg - 3 },
    { util.dark_bg_2, util.light_bg - 3 }
  ),
  Folded = util.hi({ 101, 101 }, { util.dark_bg, util.light_bg }),

  -- set foldcolumn=1
  FoldColumn = util.hi({ 144, 94 }, { util.dark_bg, util.light_bg }),

  MatchParen = colors.match_paren,
  -- -- INSERT --
  ModeMsg = util.hi({ 173, 173 }, { 0, 0 }),

  -- let &showbreak = '> '
  NonText = util.hi({ 59, 145 }, { 0, 0 }),

  MoreMsg = util.hi({ 173, 173 }, { 0, 0 }),

  -- Popup menu
  Pmenu = util.hi(
    { util.dark_fg, util.light_fg },
    { util.dark_bg + 1, util.light_bg - 2 }
  ),
  PmenuSel = util.hi({ util.dark_fg, util.dark_fg }, { 95, 95 }),
  PmenuSbar = util.hi({ 0, 0 }, { 65, 65 }),
  PmenuThumb = util.hi({ 0, 0 }, { 23, 23 }),

  -- From vimrc:
  -- Pmenu = { fg = colors.fg, bg = colors.bg },
  -- Pmenusel = { fg = colors.fg, bg = colors.active },
  -- PmenuSbar = { fg = colors.fg, bg = colors.bg_alt },
  -- PmenuThumb = { fg = colors.fg, bg = colors.cursor },

  Search = util.hi({ util.dark_fg, 255 }, { 24, 74 }),
  IncSearch = util.hi({ 220, 220 }, { util.dark_bg + 1, 238 }),

  -- :map, listchars
  SpecialKey = util.hi({ 59, 145 }, { 0, 0 }),

  StatusLine = util.hi({ 95, 95 }, { 187, 187 }),
  StatusLineNC = util.hi(
    { util.dark_bg + 2, util.light_bg - 2 },
    { 187, 238 }
  ),
  StatusLineTerm = vim.tbl_extend(
    "error",
    util.hi({ 95, 95 }, { 187, 187 }),
    { bold = true, reverse = true }
  ),
  StatusLineTermNC = vim.tbl_extend(
    "error",
    util.hi({ util.dark_bg + 2, util.light_bg - 2 }, { 187, 238 }),
    { bold = true, reverse = true }
  ),
  TabLineFill = util.hi({ util.dark_bg + 2, util.light_bg - 2 }, { 0, 0 }),
  TabLineSel = util.hi({ 187, 187 }, { 23, 66 }),
  TabLine = util.hi(
    { util.dark_bg + 12, util.light_bg - 12 },
    { util.dark_bg + 4, util.light_bg - 4 }
  ),
  WildMenu = util.hi({ 95, 95 }, { 184, 184 }),
  Title = util.hi({ 181, 88 }, { 0, 0 }),

  -- TODO
  Question = util.hi({ 179, 88 }, { 0, 0 }),

  -- Search hit bottom
  WarningMsg = util.hi({ 179, 88 }, { 0, 0 }),

  -- Diff
  diffAdded = util.hi({ 108, 65 }, { 0, 0 }),
  diffRemoved = util.hi({ 174, 131 }, { 0, 0 }),
  diffLine = { link = "Constant" },

  Conceal = colors.conceal,
  Ignore = colors.ignore,
}
