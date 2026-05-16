local colors = require("seoul256.colors")

return {
  Error = colors.error,
  ErrorMsg = colors.errormsg,

  DiagnosticError = colors.error,
  DiagnosticWarn = colors.warn,
  DiagnosticInfo = colors.info,
  DiagnosticHint = colors.hint,
  DiagnosticOk = colors.ok,

  DiagnosticVirtualTextError = colors.error,
  DiagnosticVirtualTextWarn = colors.warn,
  DiagnosticVirtualTextInfo = colors.info,
  DiagnosticVirtualTextHint = colors.hint,
  DiagnosticVirtualTextOk = colors.ok,

  DiagnosticVirtualLinesError = colors.error,
  DiagnosticVirtualLinesWarn = colors.warn,
  DiagnosticVirtualLinesInfo = colors.info,
  DiagnosticVirtualLinesHint = colors.hint,
  DiagnosticVirtualLinesOk = colors.ok,

  DiagnosticUnderlineError = colors.error,
  DiagnosticUnderlineWarn = colors.warn,
  DiagnosticUnderlineInfo = colors.info,
  DiagnosticUnderlineHint = colors.hint,
  DiagnosticUnderlineOk = colors.ok,

  DiagnosticFloatingError = colors.error,
  DiagnosticFloatingWarn = colors.warn,
  DiagnosticFloatingInfo = colors.info,
  DiagnosticFloatingHint = colors.hint,
  DiagnosticFloatingOk = colors.ok,

  DiagnosticSignError = colors.error,
  DiagnosticSignWarn = colors.warn,
  DiagnosticSignInfo = colors.info,
  DiagnosticSignHint = colors.hint,
  DiagnosticSignOk = colors.ok,

  DiagnosticDeprecated = colors.bright_black,
  DiagnosticUnnecessary = colors.bright_black,
}
