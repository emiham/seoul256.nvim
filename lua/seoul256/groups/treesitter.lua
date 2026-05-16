local colors = require("seoul256/colors")

return {
  ["@variable"] = colors.variable, --  various variable names
  ["@variable.builtin"] = colors.variable, --  built-in variable names (e.g. `this`)
  ["@variable.parameter"] = colors.variable, --  parameters of a function
  ["@variable.parameter.builtin"] = colors.variable, -- special parameters (e.g. `_`,  `it`)
  ["@variable.member"] = colors.variable, --  object and struct fields

  ["@constant"] = colors.constant, --  constant identifiers
  ["@constant.builtin"] = colors.constant, --  built-in constant values
  ["@constant.macro"] = colors.macro, --  constants defined by the preprocessor

  ["@module"] = colors.module, --  modules or namespaces
  ["@module.builtin"] = colors.module, --  built-in modules or namespaces
  ["@label"] = colors.variable, --  GOTO and other labels (e.g. `label:` in C), including heredoc labels

  -- TODO
  ["@string"] = colors.string, --  string literals
  ["@string.documentation"] = colors.comment, --  string documenting code (e.g. Python docstrings)
  ["@string.regexp"] = colors.string, --  regular expressions
  ["@string.escape"] = colors.string, --  escape sequences
  ["@string.special"] = colors.string, --  other special strings (e.g. dates)
  ["@string.special.symbol"] = colors.string, --  symbols or atoms
  ["@string.special.url"] = colors.link, --  URIs (e.g. hyperlinks)
  ["@string.special.url.comment"] = colors.link, --  URIs (e.g. hyperlinks)
  ["@string.special.path"] = colors.string, --  filenames

  ["@character"] = colors.character, --  character literals
  ["@character.special"] = colors.character, --  special characters (e.g. wildcards)

  ["@boolean"] = colors.boolean, --  boolean literals
  ["@number"] = colors.number, --  numeric literals
  ["@number.float"] = colors.float, --  floating-point number literals

  ["@type"] = colors.type, --  type or class definitions and annotations
  ["@type.builtin"] = colors.type, --  built-in types
  ["@type.definition"] = colors.macro, --  identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)

  ["@attribute"] = { fg = colors.none }, -- attribute annotations (e.g. Python decorators, Rust lifetimes)
  ["@attribute.builtin"] = { fg = colors.none }, --  builtin annotations (e.g. `@property` in Python)
  ["@property"] = { fg = colors.property }, --  the key in key/value pairs

  ["@function"] = colors.function_, --  function definitions
  ["@function.builtin"] = colors.macro, --  built-in functions
  ["@function.call"] = colors.function_, --  function calls
  ["@function.macro"] = colors.macro, --  preprocessor macros

  ["@function.method"] = colors.method, --  method definitions
  ["@function.method.call"] = colors.method, --  method calls

  ["@constructor"] = colors.constructor, --  constructor calls and definitions
  ["@operator"] = colors.operator, --  symbolic operators (e.g. `+` / `*`)

  ["@keyword"] = colors.keyword,
  ["@keyword.coroutine"] = { fg = colors.none }, -- TODO async/await
  ["@keyword.function"] = colors.macro,
  ["@keyword.operator"] = colors.operator,
  ["@keyword.import"] = colors.macro,
  ["@keyword.type"] = colors.class,
  ["@keyword.modifier"] = { fg = colors.none }, -- TODO const, static, public
  ["@keyword.repeat"] = colors.repeat_,
  ["@keyword.return"] = colors.return_,
  ["@keyword.debug"] = { fg = colors.none }, -- TODO
  ["@keyword.exception"] = colors.keyword,

  ["@keyword.conditional"] = colors.conditional,
  ["@keyword.conditional.ternary"] = colors.conditional, -- TODO

  ["@keyword.directive"] = colors.red,
  ["@keyword.directive.define"] = colors.red, -- TODO

  ["@punctuation.delimiter"] = { fg = colors.none }, -- delimiters (e.g. `;` / `.` / `,`)
  ["@punctuation.bracket"] = { fg = colors.none }, --  brackets (e.g. `()` / `{}` / `[]`)
  ["@punctuation.special"] = { fg = colors.none }, --  special symbols (e.g. `{}` in string interpolation)

  ["@comment"] = colors.comment, --  line and block comments
  ["@comment.documentation"] = colors.comment, --  comments documenting code

  ["@comment.error"] = { fg = colors.none }, --  error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
  ["@comment.warning"] = { fg = colors.none }, --  warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
  ["@comment.todo"] = { fg = colors.none }, --  todo-type comments (e.g. `TODO`, `WIP`)
  ["@comment.note"] = { fg = colors.none }, --  note-type comments (e.g. `NOTE`, `INFO`, `XXX`)

  ["@markup.strong"] = { fg = colors.none }, --  bold text
  ["@markup.italic"] = { fg = colors.none }, --  italic text
  ["@markup.strikethrough"] = { fg = colors.none }, --  struck-through text
  ["@markup.underline"] = { fg = colors.none }, --  underlined text (only for literal underline markup!)

  ["@markup.heading"] = { fg = colors.none }, --  headings, titles (including markers)
  ["@markup.heading.1"] = { fg = colors.none }, --  top-level heading
  ["@markup.heading.2"] = { fg = colors.none }, --  section heading
  ["@markup.heading.3"] = { fg = colors.none }, --  subsection heading
  ["@markup.heading.4"] = { fg = colors.none }, --  and so on
  ["@markup.heading.5"] = { fg = colors.none }, --  and so forth
  ["@markup.heading.6"] = { fg = colors.none }, --  six levels ought to be enough for anybody

  ["@markup.quote"] = { fg = colors.none }, --  block quotes
  ["@markup.math"] = { fg = colors.none }, --  math environments (e.g. `$ ... $` in LaTeX)

  ["@markup.link"] = { fg = colors.none }, --  text references, footnotes, citations, etc.
  ["@markup.link.label"] = { fg = colors.none }, -- link,  reference descriptions
  ["@markup.link.url"] = { fg = colors.none }, --  URL-style links

  ["@markup.raw"] = { fg = colors.none }, --  literal or verbatim text (e.g. inline code)
  ["@markup.raw.block"] = { fg = colors.none }, --  literal or verbatim text as a stand-alone block ; (use priority 90 for blocks with injections)

  ["@markup.list"] = { fg = colors.none }, --  list markers
  ["@markup.list.checked"] = { fg = colors.none }, --  checked todo-style list markers
  ["@markup.list.unchecked"] = { fg = colors.none }, --  unchecked todo-style list markers
  ["@diff.plus"] = colors.green, --  added text (for diff files)
  ["@diff.minus"] = colors.red, --  deleted text (for diff files)
  ["@diff.delta"] = { fg = colors.none }, --  changed text (for diff files)
  ["@tag"] = { fg = colors.none }, --  XML-style tag names (and similar)
  ["@tag.builtin"] = { fg = colors.none }, --  builtin tag names (e.g. HTML5 tags)
  ["@tag.attribute"] = { fg = colors.none }, --  XML-style tag attributes
  ["@tag.delimiter"] = { fg = colors.none }, --  XML-style tag delimiters
}
