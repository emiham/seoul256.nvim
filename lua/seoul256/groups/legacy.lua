colors = require("seoul256.colors")
util = require("seoul256.util")

return {
  Normal = colors.normal,

  LineNr = util.hi({ 101, 101 }, { util.dark_bg + 1, util.light_bg - 2 }),
  Visual = util.hi({ 0, 0 }, { 23, 152 }),
  VisualNOS = util.hi({ 0, 0 }, { 23, 152 }),

  Comment = util.hi({ 65, 65 }, { 0, 0 }),
  Number = util.hi({ 222, 95 }, { 0, 0 }),
  Float = util.hi({ 222, 95 }, { 0, 0 }),
  Boolean = util.hi({ 103, 168 }, { 0, 0 }),
  String = util.hi({ 109, 30 }, { 0, 0 }),
  Constant = util.hi({ 73, 23 }, { 0, 0 }),
  Character = util.hi({ 174, 168 }, { 0, 0 }),
  Delimiter = util.hi({ 137, 94 }, { 0, 0 }),
  StringDelimiter = util.hi({ 137, 94 }, { 0, 0 }),
  Statement = util.hi({ 108, 66 }, { 0, 0 }),
  -- case, default, etc.
  -- hi Label ctermfg=

  -- if else end
  Conditional = util.hi({ 110, 31 }, { 0, 0 }),

  -- while end
  Repeat = util.hi({ 68, 67 }, { 0, 0 }),
  Todo = util.hi({ 161, 125 }, { util.dark_bg_2, util.light_bg_2 }),
  Function = util.hi({ 187, 58 }, { 0, 0 }),

  -- Macros
  Define = util.hi({ 173, 131 }, { 0, 0 }),
  Macro = util.hi({ 173, 131 }, { 0, 0 }),
  Include = util.hi({ 173, 131 }, { 0, 0 }),
  PreCondit = util.hi({ 173, 131 }, { 0, 0 }),

  -- #!
  PreProc = util.hi({ 143, 58 }, { 0, 0 }),

  -- @abc
  Identifier = util.hi({ 217, 96 }, { 0, 0 }),

  -- AAA Abc
  Type = util.hi({ 179, 94 }, { 0, 0 }),

  -- + - * / <<
  Operator = util.hi({ 186, 131 }, { 0, 0 }),

  -- super yield
  Keyword = util.hi({ 168, 168 }, { 0, 0 }),

  -- raise
  Exception = util.hi({ 161, 161 }, { 0, 0 }),
  --
  -- hi StorageClass ctermfg=
  Structure = util.hi({ 116, 23 }, { 0, 0 }),
  -- hi Typedef ctermfg=

  Error = util.hi({ util.dark_fg, util.light_bg_1 }, { 52, 174 }),
  ErrorMsg = util.hi({ util.dark_fg, util.light_bg_1 }, { 52, 168 }),
  Underlined = util.hi({ 181, 168 }, { 0, 0 }),

  -- set textwidth=80
  -- set colorcolumn=+1
  ColorColumn = util.hi({ 0, 0 }, { util.dark_bg - 1, util.light_bg - 2 }),

  -- GVIM only
  -- hi Cursor ctermfg=
  -- hi CursorIM ctermfg=

  -- set cursorline cursorcolumn
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

  DiffAdd = util.hi({ 0, 0 }, { 22, 151 }),
  DiffDelete = util.hi({ 0, 0 }, { 95, 181 }),
  DiffChange = util.hi({ 0, 0 }, { util.dark_bg + 3, 189 }),
  DiffText = util.hi({ 0, 0 }, { 52, 224 }),

  VertSplit = util.hi(
    { util.dark_bg_2, util.light_bg - 3 },
    { util.dark_bg_2, util.light_bg - 3 }
  ),
  Folded = util.hi({ 101, 101 }, { util.dark_bg + 1, util.light_bg - 2 }),

  -- set foldcolumn=1
  FoldColumn = util.hi({ 144, 94 }, { util.dark_bg + 1, util.light_bg - 2 }),

  MatchParen = util.hi({ 0, 0 }, { util.dark_bg + 3, util.light_bg - 3 }),

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

  Search = util.hi({ util.dark_fg, 255 }, { 24, 74 }),
  IncSearch = util.hi({ 220, 220 }, { util.dark_bg + 1, 238 }),

  -- String delimiter, interpolation
  Special = util.hi({ 216, 173 }, { 0, 0 }),
  -- hi SpecialChar ctermfg=
  -- hi SpecialComment ctermfg=
  -- hi Tag ctermfg=
  -- hi Debug ctermfg=

  -- :map, listchars
  SpecialKey = util.hi({ 59, 145 }, { 0, 0 }),

  SpellBad = {
    ctermfg = (util.style_idx and 168 or 125),
    ctermbg = "NONE",
    undercurl = true,
  },
  SpellCap = {
    ctermfg = (util.style_idx and 110 or 25),
    ctermbg = "NONE",
    undercurl = true,
  },
  SpellLocal = {
    ctermfg = (util.style_idx and 153 or 31),
    ctermbg = "NONE",
    undercurl = true,
  },
  SpellRare = {
    ctermfg = (util.style_idx and 218 or 96),
    ctermbg = "NONE",
    undercurl = true,
  },

  --
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

  -- :set all
  Title = util.hi({ 181, 88 }, { 0, 0 }),

  -- TODO
  Question = util.hi({ 179, 88 }, { 0, 0 }),

  -- Search hit bottom
  WarningMsg = util.hi({ 179, 88 }, { 0, 0 }),

  -- Sign column
  SignColumn = util.hi({ 173, 173 }, { util.dark_bg, util.light_bg }),

  -- Diff
  diffAdded = util.hi({ 108, 65 }, { 0, 0 }),
  diffRemoved = util.hi({ 174, 131 }, { 0, 0 }),
  diffLine = { link = "Constant" },

  Conceal = util.hi(
    { util.dark_fg + 2, util.light_fg - 2 },
    { util.dark_bg - 1, util.light_bg + 2 }
  ),
  Ignore = util.hi(
    { util.dark_bg + 3, util.light_bg - 3 },
    { util.dark_bg, util.light_bg }
  ),

  -------------
  -- Plugins --
  -------------

  -- vim-indent-guides
  -- -----------------
  IndentGuidesOdd = util.hi({ 0, 0 }, { util.dark_bg - 1, util.light_bg + 1 }),
  IndentGuidesEven = util.hi(
    { 0, 0 },
    { util.dark_bg + 1, util.light_bg - 1 }
  ),

  -- vim-gitgutter
  -- -------------
  GitGutterAdd = util.hi({ 108, 65 }, { util.dark_bg + 1, util.light_bg - 2 }),
  GitGutterChange = util.hi(
    { 68, 68 },
    { util.dark_bg + 1, util.light_bg - 2 }
  ),
  GitGutterDelete = util.hi(
    { 161, 161 },
    { util.dark_bg + 1, util.light_bg - 2 }
  ),
  GitGutterChangeDelete = util.hi(
    { 168, 168 },
    { util.dark_bg + 1, util.light_bg - 2 }
  ),

  -- ale
  -- ---
  ALEErrorSign = util.hi({ 161, 161 }, { util.dark_bg, util.light_bg }),
  ALEWarningSign = util.hi({ 174, 131 }, { util.dark_bg, util.light_bg }),

  -- vim-signify
  -- -----------
  SignifySignAdd = util.hi(
    { 108, 65 },
    { util.dark_bg + 1, util.light_bg - 2 }
  ),
  SignifySignChange = util.hi(
    { 68, 68 },
    { util.dark_bg + 1, util.light_bg - 2 }
  ),
  SignifySignDelete = util.hi(
    { 161, 161 },
    { util.dark_bg + 1, util.light_bg - 2 }
  ),

  -- coc.nvim
  -- --------
  CocFloating = util.hi(
    { util.dark_fg, util.light_fg },
    { util.dark_bg_2, util.light_bg - 2 }
  ),

  -- http://vim.wikia.com/wiki/Highlight_unwanted_spaces
  -- ---------------------------------------------------^^^^^
  ExtraWhitespace = util.hi({ 0, 0 }, { util.dark_bg - 1, util.light_bg - 2 }),

  -- vim-ruby
  -- --------
  -- rubySymbol
  rubyClass = util.hi({ 31, 31 }, { 0, 0 }),
  -- rubyInstanceVariable = util.hi({189, 189}, {'', ''}),
  rubyRegexp = util.hi({ 186, 101 }, { 0, 0 }),
  rubyRegexpDelimiter = util.hi({ 168, 168 }, { 0, 0 }),
  rubyArrayDelimiter = util.hi({ 67, 38 }, { 0, 0 }),
  rubyBlockParameterList = util.hi({ 186, 94 }, { 0, 0 }),
  rubyCurlyBlockDelimiter = util.hi({ 144, 101 }, { 0, 0 }),

  -- ARGV $stdout
  rubyPredefinedIdentifier = util.hi({ 230, 52 }, { 0, 0 }),
  -- hi rubyRegexpSpecial
}
