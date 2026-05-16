local colors = require("seoul256.colors")

return {
  Normal = colors.normal,
  Comment = colors.comment,
  Number = colors.number,
  Float = colors.float,
  Boolean = colors.boolean,
  String = colors.string_,
  Constant = colors.constant,
  Character = colors.character,
  Delimiter = colors.delimiter,
  StringDelimiter = colors.string_delimiter,
  Statement = colors.statement,
  -- case, default, etc.
  -- hi Label ctermfg=

  Conditional = colors.conditional,

  -- while end
  Repeat = colors.repeat_,
  Todo = colors.todo,
  Function = colors.function_,

  -- Macros
  Define = colors.macro,
  Macro = colors.macro,
  Include = colors.macro,
  PreCondit = colors.macro,

  -- #!
  PreProc = colors.preproc,

  -- @abc
  Identifier = colors.identifier,

  -- AAA Abc
  Type = colors.type,

  -- + - * / <<
  Operator = colors.operator,

  -- super yield
  Keyword = colors.keyword,

  -- raise
  Exception = colors.exception,
  --
  -- hi StorageClass ctermfg=
  Structure = colors.structure,
  -- hi Typedef ctermfg=

  Underlined = colors.underlined,

  -- String delimiter, interpolation
  Special = colors.special,
  -- hi SpecialChar ctermfg=
  -- hi SpecialComment ctermfg=
  -- hi Tag ctermfg=
  -- hi Debug ctermfg=
}
