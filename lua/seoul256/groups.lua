local rgb_map = require("seoul256.colors")

local background = vim.o.background
local colors_name = vim.g.colors_name or ""

local style
local seoul256_background = nil

-- 1. If vim.g.seoul256_background is found
if vim.g.seoul256_background then
  seoul256_background = vim.g.seoul256_background
  if seoul256_background >= 233 and seoul256_background <= 239 then
    style = "dark"
  elseif seoul256_background >= 252 and seoul256_background <= 256 then
    style = "light"
  else
    seoul256_background = nil
  end
end

-- 2. If style not set yet
if not style then
  if colors_name ~= "seoul256" then
    style = "dark"
  else
    style = background
  end
end

local style_idx = (style == "light") and 1 or 0

-- Background colors
if style == "dark" then
  dark_bg = seoul256_background or 237
  light_bg = 253
else
  dark_bg = 237
  light_bg = seoul256_background or 253
end

local dark_bg_2 = (dark_bg > 233) and (dark_bg - 2) or 16
local light_bg_1 = math.min(light_bg + 1, 256)
local light_bg_2 = math.min(light_bg + 2, 256)

-- Foreground colors
local dark_fg = 252
local light_fg = 239

local function hi(fg, bg)
  local fg_val = (fg[style_idx + 1] > 255) and 231 or fg[style_idx + 1]
  local bg_val = (bg[style_idx + 1] > 255) and 231 or bg[style_idx + 1]

  local hl = {}

  if fg_val and fg_val ~= "" then
    hl.ctermfg = fg_val
    hl.fg = rgb_map[fg_val] or "NONE"
  end

  if bg_val and bg_val ~= "" then
    hl.ctermbg = bg_val
    hl.bg = rgb_map[bg_val] or "NONE"
  end

  return hl
end

-- Reset highlights
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end

-- Mark colorscheme name
vim.g.colors_name = "seoul256"

vim.g.seoul256_current_fg = ({ dark_fg, light_fg })[style_idx + 1]
vim.g.seoul256_current_bg = ({ dark_bg, light_bg })[style_idx + 1]
vim.g.colors_name = "seoul256"
if colors_name ~= vim.g.colors_name or background == style then
  vim.o.background = style
else
  vim.o.background = background
end

vim.g.ruby_operators = 1
vim.g.indent_guides_auto_colors = 0

return {
  Normal = hi({ dark_fg, light_fg }, { dark_bg, light_bg }),

  LineNr = hi({ 101, 101 }, { dark_bg + 1, light_bg - 2 }),
  Visual = hi({ 0, 0 }, { 23, 152 }),
  VisualNOS = hi({ 0, 0 }, { 23, 152 }),

  Comment = hi({ 65, 65 }, { 0, 0 }),
  Number = hi({ 222, 95 }, { 0, 0 }),
  Float = hi({ 222, 95 }, { 0, 0 }),
  Boolean = hi({ 103, 168 }, { 0, 0 }),
  String = hi({ 109, 30 }, { 0, 0 }),
  Constant = hi({ 73, 23 }, { 0, 0 }),
  Character = hi({ 174, 168 }, { 0, 0 }),
  Delimiter = hi({ 137, 94 }, { 0, 0 }),
  StringDelimiter = hi({ 137, 94 }, { 0, 0 }),
  Statement = hi({ 108, 66 }, { 0, 0 }),
  -- case, default, etc.
  -- hi Label ctermfg=

  -- if else end
  Conditional = hi({ 110, 31 }, { 0, 0 }),

  -- while end
  Repeat = hi({ 68, 67 }, { 0, 0 }),
  Todo = hi({ 161, 125 }, { dark_bg_2, light_bg_2 }),
  Function = hi({ 187, 58 }, { 0, 0 }),

  -- Macros
  Define = hi({ 173, 131 }, { 0, 0 }),
  Macro = hi({ 173, 131 }, { 0, 0 }),
  Include = hi({ 173, 131 }, { 0, 0 }),
  PreCondit = hi({ 173, 131 }, { 0, 0 }),

  -- #!
  PreProc = hi({ 143, 58 }, { 0, 0 }),

  -- @abc
  Identifier = hi({ 217, 96 }, { 0, 0 }),

  -- AAA Abc
  Type = hi({ 179, 94 }, { 0, 0 }),

  -- + - * / <<
  Operator = hi({ 186, 131 }, { 0, 0 }),

  -- super yield
  Keyword = hi({ 168, 168 }, { 0, 0 }),

  -- raise
  Exception = hi({ 161, 161 }, { 0, 0 }),
  --
  -- hi StorageClass ctermfg=
  Structure = hi({ 116, 23 }, { 0, 0 }),
  -- hi Typedef ctermfg=

  Error = hi({ dark_fg, light_bg_1 }, { 52, 174 }),
  ErrorMsg = hi({ dark_fg, light_bg_1 }, { 52, 168 }),
  Underlined = hi({ 181, 168 }, { 0, 0 }),

  -- set textwidth=80
  -- set colorcolumn=+1
  ColorColumn = hi({ 0, 0 }, { dark_bg - 1, light_bg - 2 }),

  -- GVIM only
  -- hi Cursor ctermfg=
  -- hi CursorIM ctermfg=

  -- set cursorline cursorcolumn
  CursorLine = vim.tbl_extend(
    "error",
    hi({ 0, 0 }, { dark_bg - 1, light_bg - 1 }),
    { cterm = {} }
  ),
  CursorLineNr = vim.tbl_extend(
    "error",
    hi({ 131, 131 }, { dark_bg - 1, light_bg - 1 }),
    { cterm = {} }
  ),
  CursorColumn = hi({ 0, 0 }, { dark_bg - 1, light_bg - 1 }),
  NormalFloat = hi({ 0, 0 }, { dark_bg - 1, light_bg - 1 }),

  Directory = hi({ 187, 95 }, { 0, 0 }),

  DiffAdd = hi({ 0, 0 }, { 22, 151 }),
  DiffDelete = hi({ 0, 0 }, { 95, 181 }),
  DiffChange = hi({ 0, 0 }, { dark_bg + 3, 189 }),
  DiffText = hi({ 0, 0 }, { 52, 224 }),

  VertSplit = hi({ dark_bg_2, light_bg - 3 }, { dark_bg_2, light_bg - 3 }),
  Folded = hi({ 101, 101 }, { dark_bg + 1, light_bg - 2 }),

  -- set foldcolumn=1
  FoldColumn = hi({ 144, 94 }, { dark_bg + 1, light_bg - 2 }),

  MatchParen = hi({ 0, 0 }, { dark_bg + 3, light_bg - 3 }),

  -- -- INSERT --
  ModeMsg = hi({ 173, 173 }, { 0, 0 }),

  -- let &showbreak = '> '
  NonText = hi({ 59, 145 }, { 0, 0 }),

  MoreMsg = hi({ 173, 173 }, { 0, 0 }),

  -- Popup menu
  Pmenu = hi({ dark_fg, light_fg }, { dark_bg + 1, light_bg - 2 }),
  PmenuSel = hi({ dark_fg, dark_fg }, { 95, 95 }),
  PmenuSbar = hi({ 0, 0 }, { 65, 65 }),
  PmenuThumb = hi({ 0, 0 }, { 23, 23 }),

  Search = hi({ dark_fg, 255 }, { 24, 74 }),
  IncSearch = hi({ 220, 220 }, { dark_bg + 1, 238 }),

  -- String delimiter, interpolation
  Special = hi({ 216, 173 }, { 0, 0 }),
  -- hi SpecialChar ctermfg=
  -- hi SpecialComment ctermfg=
  -- hi Tag ctermfg=
  -- hi Debug ctermfg=

  -- :map, listchars
  SpecialKey = hi({ 59, 145 }, { 0, 0 }),

  SpellBad = {
    ctermfg = (style_idx and 168 or 125),
    ctermbg = "NONE",
    undercurl = true,
  },
  SpellCap = {
    ctermfg = (style_idx and 110 or 25),
    ctermbg = "NONE",
    undercurl = true,
  },
  SpellLocal = {
    ctermfg = (style_idx and 153 or 31),
    ctermbg = "NONE",
    undercurl = true,
  },
  SpellRare = {
    ctermfg = (style_idx and 218 or 96),
    ctermbg = "NONE",
    undercurl = true,
  },

  --
  StatusLine = hi({ 95, 95 }, { 187, 187 }),
  StatusLineNC = hi({ dark_bg + 2, light_bg - 2 }, { 187, 238 }),
  StatusLineTerm = vim.tbl_extend(
    "error",
    hi({ 95, 95 }, { 187, 187 }),
    { bold = true, reverse = true }
  ),
  StatusLineTermNC = vim.tbl_extend(
    "error",
    hi({ dark_bg + 2, light_bg - 2 }, { 187, 238 }),
    { bold = true, reverse = true }
  ),
  TabLineFill = hi({ dark_bg + 2, light_bg - 2 }, { 0, 0 }),
  TabLineSel = hi({ 187, 187 }, { 23, 66 }),
  TabLine = hi({ dark_bg + 12, light_bg - 12 }, { dark_bg + 4, light_bg - 4 }),
  WildMenu = hi({ 95, 95 }, { 184, 184 }),

  -- :set all
  Title = hi({ 181, 88 }, { 0, 0 }),

  -- TODO
  Question = hi({ 179, 88 }, { 0, 0 }),

  -- Search hit bottom
  WarningMsg = hi({ 179, 88 }, { 0, 0 }),

  -- Sign column
  SignColumn = hi({ 173, 173 }, { dark_bg, light_bg }),

  -- Diff
  diffAdded = hi({ 108, 65 }, { 0, 0 }),
  diffRemoved = hi({ 174, 131 }, { 0, 0 }),
  diffLine = { link = "Constant" },

  Conceal = hi({ dark_fg + 2, light_fg - 2 }, { dark_bg - 1, light_bg + 2 }),
  Ignore = hi({ dark_bg + 3, light_bg - 3 }, { dark_bg, light_bg }),

  -------------
  -- Plugins --
  -------------

  -- vim-indent-guides
  -- -----------------
  IndentGuidesOdd = hi({ 0, 0 }, { dark_bg - 1, light_bg + 1 }),
  IndentGuidesEven = hi({ 0, 0 }, { dark_bg + 1, light_bg - 1 }),

  -- vim-gitgutter
  -- -------------
  GitGutterAdd = hi({ 108, 65 }, { dark_bg + 1, light_bg - 2 }),
  GitGutterChange = hi({ 68, 68 }, { dark_bg + 1, light_bg - 2 }),
  GitGutterDelete = hi({ 161, 161 }, { dark_bg + 1, light_bg - 2 }),
  GitGutterChangeDelete = hi({ 168, 168 }, { dark_bg + 1, light_bg - 2 }),

  -- ale
  -- ---
  ALEErrorSign = hi({ 161, 161 }, { dark_bg, light_bg }),
  ALEWarningSign = hi({ 174, 131 }, { dark_bg, light_bg }),

  -- vim-signify
  -- -----------
  SignifySignAdd = hi({ 108, 65 }, { dark_bg + 1, light_bg - 2 }),
  SignifySignChange = hi({ 68, 68 }, { dark_bg + 1, light_bg - 2 }),
  SignifySignDelete = hi({ 161, 161 }, { dark_bg + 1, light_bg - 2 }),

  -- coc.nvim
  -- --------
  CocFloating = hi({ dark_fg, light_fg }, { dark_bg_2, light_bg - 2 }),

  -- http://vim.wikia.com/wiki/Highlight_unwanted_spaces
  -- ---------------------------------------------------^^^^^
  ExtraWhitespace = hi({ 0, 0 }, { dark_bg - 1, light_bg - 2 }),

  -- vim-ruby
  -- --------
  -- rubySymbol
  rubyClass = hi({ 31, 31 }, { 0, 0 }),
  -- rubyInstanceVariable = hi({189, 189}, {'', ''}),
  rubyRegexp = hi({ 186, 101 }, { 0, 0 }),
  rubyRegexpDelimiter = hi({ 168, 168 }, { 0, 0 }),
  rubyArrayDelimiter = hi({ 67, 38 }, { 0, 0 }),
  rubyBlockParameterList = hi({ 186, 94 }, { 0, 0 }),
  rubyCurlyBlockDelimiter = hi({ 144, 101 }, { 0, 0 }),

  -- ARGV $stdout
  rubyPredefinedIdentifier = hi({ 230, 52 }, { 0, 0 }),
  -- hi rubyRegexpSpecial
}
