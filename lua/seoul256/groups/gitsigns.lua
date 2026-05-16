local colors = require("seoul256.colors")

return {
  GitSignsAdd = colors.green, -- Used for the text of 'add' signs.
  GitSignsChange = colors.yellow, -- Used for the text of 'change' signs.
  GitSignsDelete = colors.red, -- Used for the text of 'delete' signs.
  -- GitSignsChangedelete = colors.none, -- Used for the text of 'changedelete' signs.
  -- GitSignsTopdelete = colors.none, -- Used for the text of 'topdelete' signs.
  -- GitSignsUntracked = colors.none, -- Used for the text of 'untracked' signs.
  -- GitSignsAddNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'add' signs.
  -- GitSignsChangeNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'change' signs.
  -- GitSignsDeleteNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'delete' signs.
  -- GitSignsChangedeleteNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'changedelete' signs.
  -- GitSignsTopdeleteNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'topdelete' signs.
  -- GitSignsUntrackedNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'untracked' signs.
  -- GitSignsAddLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'add' signs.
  -- GitSignsChangeLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'change' signs.
  -- GitSignsChangedeleteLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'changedelete' signs.
  -- GitSignsTopdeleteLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'topdelete' signs.
  -- GitSignsUntrackedLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'untracked' signs.
  -- GitSignsAddCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'add' signs.
  -- GitSignsChangeCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'change' signs.
  -- GitSignsDeleteCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'delete' signs.
  -- GitSignsChangedeleteCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'changedelete' signs.
  -- GitSignsTopdeleteCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'topdelete' signs.
  -- GitSignsUntrackedCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'untracked' signs.
  -- GitSignsStagedAdd = colors.none, -- Used for the text of 'add' staged signs.
  -- GitSignsStagedChange = colors.none, -- Used for the text of 'change' staged signs.
  -- GitSignsStagedDelete = colors.none, -- Used for the text of 'delete' staged signs.
  -- GitSignsStagedChangedelete = colors.none, -- Used for the text of 'changedelete' staged signs.
  -- GitSignsStagedTopdelete = colors.none, -- Used for the text of 'topdelete' staged signs.
  -- GitSignsStagedUntracked = colors.none, -- Used for the text of 'untracked' staged signs.
  -- GitSignsStagedAddNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'add' staged signs.
  -- GitSignsStagedChangeNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'change' staged signs.
  -- GitSignsStagedDeleteNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'delete' staged signs.
  -- GitSignsStagedChangedeleteNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'changedelete' staged signs.
  -- GitSignsStagedTopdeleteNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'topdelete' staged signs.
  -- GitSignsStagedUntrackedNr = colors.none, -- Used for number column (when `config.numhl == true`) of 'untracked' staged signs.
  -- GitSignsStagedAddLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'add' staged signs.
  -- GitSignsStagedChangeLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'change' staged signs.
  -- GitSignsStagedChangedeleteLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'changedelete' staged signs.
  -- GitSignsStagedTopdeleteLn = { colors.none }, -- Used for buffer line (when `config.linehl == true`) of 'topdelete' staged signs.
  -- GitSignsStagedUntrackedLn = colors.none, -- Used for buffer line (when `config.linehl == true`) of 'untracked' staged signs.
  -- GitSignsStagedAddCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'add' staged signs.
  -- GitSignsStagedChangeCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'change' staged signs.
  -- GitSignsStagedDeleteCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'delete' staged signs.
  -- GitSignsStagedChangedeleteCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'changedelete' staged signs.
  -- GitSignsStagedTopdeleteCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'topdelete' staged signs.
  -- GitSignsStagedUntrackedCul = colors.none, -- Used for the text (when the cursor is on the same line as the sign) of 'untracked' staged signs.
  -- GitSignsAddPreview = colors.none, -- Used for added lines in previews.
  -- GitSignsDeletePreview = colors.none, -- Used for deleted lines in previews.
  GitSignsCurrentLineBlame = colors.disabled, -- Used for current line blame.
  -- GitSignsAddInline = colors.none, -- Used for added word diff regions in inline previews.
  -- GitSignsDeleteInline = colors.none, -- Used for deleted word diff regions in inline previews.
  -- GitSignsChangeInline = colors.none, -- Used for changed word diff regions in inline previews.
  -- GitSignsAddLnInline = colors.none, -- Used for added word diff regions when `config.word_diff == true`.
  -- GitSignsChangeLnInline = colors.none, -- Used for changed word diff regions when `config.word_diff == true`.
  -- GitSignsDeleteLnInline = colors.none, -- Used for deleted word diff regions when `config.word_diff == true`.
  -- GitSignsDeleteVirtLn = colors.none, -- Used for deleted lines shown by inline `preview_hunk_inline()` or `show_deleted()`.
  -- GitSignsDeleteVirtLnInLine = colors.none, -- Used for word diff regions in lines shown by inline `preview_hunk_inline()` or `show_deleted()`.
  -- GitSignsVirtLnum = colors.none, -- Used for line numbers in inline hunks previews.
}
