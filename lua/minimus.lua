-- Made with 'mini.colors' module of https://github.com/echasnovski/mini.nvim

if vim.g.colors_name ~= nil then vim.cmd("highlight clear") end
vim.g.colors_name = "minimus"

-- Highlight groups
local hi = vim.api.nvim_set_hl

hi(0, "@character.special", { link = "SpecialChar" })
hi(0, "@constant.builtin", { fg = "#e8b1b0" })
hi(0, "@constant.macro", { link = "Macro" })
hi(0, "@define", { link = "Macro" })
hi(0, "@function", { fg = "#4dccff" })
hi(0, "@function.builtin", { link = "Special" })
hi(0, "@function.macro", { link = "Macro" })
hi(0, "@include", { link = "Macro" })
hi(0, "@lsp.mod.async", { link = "Keyword" })
hi(0, "@lsp.mod.callable", { link = "Function" })
hi(0, "@lsp.mod.keyword", { link = "Keyword" })
hi(0, "@lsp.type.attribute", { link = "Macro" })
hi(0, "@lsp.type.builtinAttribute", { link = "Macro" })
hi(0, "@lsp.type.class", { link = "Structure" })
hi(0, "@lsp.type.comment", { link = "Comment" })
hi(0, "@lsp.type.decorator", { link = "Function" })
hi(0, "@lsp.type.enum", { link = "Structure" })
hi(0, "@lsp.type.enumMember", { fg = "#caa6f7" })
hi(0, "@lsp.type.escapeSequence", { link = "SpecialChar" })
hi(0, "@lsp.type.formatSpecifier", { link = "SpecialChar" })
hi(0, "@lsp.type.function", { link = "Function" })
hi(0, "@lsp.type.interface", { link = "Structure" })
hi(0, "@lsp.type.keyword", { link = "Keyword" })
hi(0, "@lsp.type.macro", { link = "Macro" })
hi(0, "@lsp.type.macroBang", { link = "Operator" })
hi(0, "@lsp.type.method", { link = "Function" })
hi(0, "@lsp.type.namespace", { link = "Structure" })
hi(0, "@lsp.type.operator", { link = "Operator" })
hi(0, "@lsp.type.parameter", { link = "Identifier" })
hi(0, "@lsp.type.property", { fg = "#f8bacb" })
hi(0, "@lsp.type.punctuation", { link = "Delimiter" })
hi(0, "@lsp.type.selfKeyword", { fg = "#89b5fa" })
hi(0, "@lsp.type.selfTypeKeyword", { link = "Keyword" })
hi(0, "@lsp.type.struct", { link = "Structure" })
hi(0, "@lsp.type.type", { link = "Type" })
hi(0, "@lsp.type.typeAlias", { fg = "#fffac2" })
hi(0, "@lsp.type.typeParameter", { fg = "#fffac2" })
hi(0, "@lsp.type.union", { fg = "#fffac2" })
hi(0, "@lsp.type.variable", { link = "Identifier" })
hi(0, "@lsp.typemod.variable.static", { fg = "#e8b1b0" })
hi(0, "@method", { fg = "#6bd5ff" })
hi(0, "@namespace", { fg = "#8adeff" })
hi(0, "@parameter", { fg = "#b8dcff" })
hi(0, "@preproc", { link = "Macro" })
hi(0, "@property", { fg = "#7abfff" })
hi(0, "@punctuation", { fg = "#b1c0d3" })
hi(0, "@string.escape", { fg = "#a0acfe" })
hi(0, "@string.special", { fg = "#a0acfe" })
hi(0, "@structure", { fg = "#8adeff" })
hi(0, "@text.literal", {})
hi(0, "@text.reference", { fg = "#add8ff" })
hi(0, "@text.title", { fg = "#5ee4c7" })
hi(0, "@text.todo", { link = "Todo" })
hi(0, "@text.underline", { link = "Underlined" })
hi(0, "@text.uri", { link = "Underlined" })
hi(0, "@type.definition", { link = "Typedef" })
hi(0, "AerialArrayIcon", { link = "Constant" })
hi(0, "AerialBooleanIcon", { link = "Boolean" })
hi(0, "AerialClassIcon", { link = "Type" })
hi(0, "AerialConstantIcon", { link = "Constant" })
hi(0, "AerialConstructorIcon", { link = "Function" })
hi(0, "AerialEnumIcon", { link = "Type" })
hi(0, "AerialEnumMemberIcon", { link = "Identifier" })
hi(0, "AerialEventIcon", { link = "Type" })
hi(0, "AerialFieldIcon", { link = "Identifier" })
hi(0, "AerialFileIcon", { link = "Identifier" })
hi(0, "AerialFunctionIcon", { link = "Function" })
hi(0, "AerialGuide", { fg = "#c4d1de" })
hi(0, "AerialInterfaceIcon", { link = "Type" })
hi(0, "AerialKeyIcon", { link = "Identifier" })
hi(0, "AerialLine", { fg = "#fffac2" })
hi(0, "AerialMethodIcon", { link = "Function" })
hi(0, "AerialModuleIcon", { link = "Identifier" })
hi(0, "AerialNamespaceIcon", { fg = "#8adeff" })
hi(0, "AerialNullIcon", { link = "Constant" })
hi(0, "AerialNumberIcon", { link = "Number" })
hi(0, "AerialObjectIcon", { link = "Type" })
hi(0, "AerialOperatorIcon", { link = "Operator" })
hi(0, "AerialPackageIcon", { link = "Identifier" })
hi(0, "AerialPropertyIcon", { link = "Identifier" })
hi(0, "AerialStringIcon", { link = "String" })
hi(0, "AerialStructIcon", { link = "Type" })
hi(0, "AerialTypeParameterIcon", { link = "Identifier" })
hi(0, "AerialVariableIcon", { link = "Identifier" })
hi(0, "Boolean", { fg = "#ea9eab" })
hi(0, "Character", { fg = "#8adeff" })
hi(0, "CmpItemAbbr", { fg = "#e4f0fb" })
hi(0, "CmpItemAbbrDefault", { fg = "#e4f0fb" })
hi(0, "CmpItemAbbrDeprecated", { strikethrough = true })
hi(0, "CmpItemAbbrDeprecatedDefault", { fg = "#7dacd9" })
hi(0, "CmpItemAbbrMatch", { bold = true, fg = "#e4f0fb" })
hi(0, "CmpItemAbbrMatchDefault", { fg = "#e4f0fb" })
hi(0, "CmpItemAbbrMatchFuzzy", { bold = true, fg = "#e4f0fb" })
hi(0, "CmpItemAbbrMatchFuzzyDefault", { fg = "#e4f0fb" })
hi(0, "CmpItemKind", { fg = "#89b5fa" })
hi(0, "CmpItemKindClass", { fg = "#f9e1ae" })
hi(0, "CmpItemKindClassDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindColor", { fg = "#f38ca9" })
hi(0, "CmpItemKindColorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstant", { fg = "#fab285" })
hi(0, "CmpItemKindConstantDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstructor", { fg = "#89b5fa" })
hi(0, "CmpItemKindConstructorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindCopilot", { fg = "#5ee4c7" })
hi(0, "CmpItemKindDefault", { fg = "#a0acfe" })
hi(0, "CmpItemKindEnum", { fg = "#fffac2" })
hi(0, "CmpItemKindEnumDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEnumMember", { fg = "#f38ca9" })
hi(0, "CmpItemKindEnumMemberDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEvent", { fg = "#89b5fa" })
hi(0, "CmpItemKindEventDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindField", { fg = "#fffac2" })
hi(0, "CmpItemKindFieldDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFile", { fg = "#89b5fa" })
hi(0, "CmpItemKindFileDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFolder", { fg = "#89b5fa" })
hi(0, "CmpItemKindFolderDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFunction", { fg = "#89b5fa" })
hi(0, "CmpItemKindFunctionDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindInterface", { fg = "#fffac2" })
hi(0, "CmpItemKindInterfaceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindKeyword", { fg = "#f38ca9" })
hi(0, "CmpItemKindKeywordDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindMethod", { fg = "#89b5fa" })
hi(0, "CmpItemKindMethodDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindModule", { fg = "#89b5fa" })
hi(0, "CmpItemKindModuleDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindOperator", { fg = "#89b5fa" })
hi(0, "CmpItemKindOperatorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindProperty", { fg = "#fffac2" })
hi(0, "CmpItemKindPropertyDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindReference", { fg = "#f38ca9" })
hi(0, "CmpItemKindReferenceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindSnippet", { fg = "#caa6f7" })
hi(0, "CmpItemKindSnippetDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindStruct", { fg = "#89b5fa" })
hi(0, "CmpItemKindStructDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindText", { fg = "#93e1d4" })
hi(0, "CmpItemKindTextDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindTypeParameter", { fg = "#89b5fa" })
hi(0, "CmpItemKindTypeParameterDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindUnit", { fg = "#fffac2" })
hi(0, "CmpItemKindUnitDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindValue", { fg = "#fab285" })
hi(0, "CmpItemKindValueDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindVariable", { fg = "#f2cece" })
hi(0, "CmpItemKindVariableDefault", { link = "CmpItemKind" })
hi(0, "CmpItemMenu", { fg = "#e4f0fb" })
hi(0, "CmpItemMenuDefault", { fg = "#e4f0fb" })
hi(0, "ColorColumn", { bg = "#373a49" })
hi(0, "Comment", { fg = "#7dacd9" })
hi(0, "Conceal", {})
hi(0, "Conditional", { fg = "#629cf8" })
hi(0, "Constant", { fg = "#e8b1b0" })
hi(0, "CopilotStatusError", { bg = "#303340", fg = "#f38ca9" })
hi(0, "CopilotStatusOk", { bg = "#303340", fg = "#5ee4c7" })
hi(0, "Cursor", { bg = "#fefefe", fg = "#1f1f1f" })
hi(0, "CursorColumn", { bg = "#373a49" })
hi(0, "CursorLine", { bg = "#373a49" })
hi(0, "CursorLineNr", { bold = true, fg = "#8f94c1" })
hi(0, "Cursorword", { italic = true })
hi(0, "Debug", { fg = "#f38ca9" })
hi(0, "Define", { link = "Macro" })
hi(0, "DelaySymbol", { bg = "#26283f", fg = "#5fb3b3" })
hi(0, "Delimiter", { fg = "#b1c0d3" })
hi(0, "DiagnosticError", { fg = "#d74947" })
hi(0, "DiagnosticHint", { fg = "#89dceb" })
hi(0, "DiagnosticInfo", { fg = "#74c6ec" })
hi(0, "DiagnosticWarn", { fg = "#fff694" })
hi(0, "DiffAdd", { fg = "#5ee4c7" })
hi(0, "DiffChange", { fg = "#fffac2" })
hi(0, "DiffDelete", { fg = "#f38ca9" })
hi(0, "DiffText", { fg = "#8adeff" })
hi(0, "Directory", { fg = "#89b5fa" })
hi(0, "DropBar", { fg = "#89b5fa" })
hi(0, "DropBarCurrentContext", { bg = "#3d4151" })
hi(0, "DropBarHover", { bg = "#3d4151" })
hi(0, "DropBarIconKindArray", {})
hi(0, "DropBarIconKindBoolean", { fg = "#ea9eab" })
hi(0, "DropBarIconKindBreakStatement", { fg = "#c94745" })
hi(0, "DropBarIconKindCall", { fg = "#4dccff" })
hi(0, "DropBarIconKindCaseStatement", { fg = "#629cf8" })
hi(0, "DropBarIconKindClass", { fg = "#f9e1ae" })
hi(0, "DropBarIconKindConstant", { fg = "#e8b1b0" })
hi(0, "DropBarIconKindConstructor", { fg = "#89b5fa" })
hi(0, "DropBarIconKindContinueStatement", { fg = "#629cf8" })
hi(0, "DropBarIconKindDeclaration", { fg = "#caa6f7" })
hi(0, "DropBarIconKindDelete", { fg = "#c94745" })
hi(0, "DropBarIconKindDoStatement", { fg = "#629cf8" })
hi(0, "DropBarIconKindElseStatement", { fg = "#629cf8" })
hi(0, "DropBarIconKindEnum", { fg = "#fffac2" })
hi(0, "DropBarIconKindEnumMember", { fg = "#f38ca9" })
hi(0, "DropBarIconKindEvent", { fg = "#89b5fa" })
hi(0, "DropBarIconKindField", { fg = "#fffac2" })
hi(0, "DropBarIconKindFile", { fg = "#89b5fa" })
hi(0, "DropBarIconKindFolder", { fg = "#89b5fa" })
hi(0, "DropBarIconKindForStatement", { fg = "#629cf8" })
hi(0, "DropBarIconKindFunction", { fg = "#4dccff" })
hi(0, "DropBarIconKindH1Marker", {})
hi(0, "DropBarIconKindH2Marker", {})
hi(0, "DropBarIconKindH3Marker", {})
hi(0, "DropBarIconKindH4Marker", {})
hi(0, "DropBarIconKindH5Marker", {})
hi(0, "DropBarIconKindH6Marker", {})
hi(0, "DropBarIconKindIdentifier", { fg = "#f2cece" })
hi(0, "DropBarIconKindIfStatement", { fg = "#629cf8" })
hi(0, "DropBarIconKindInterface", { fg = "#fffac2" })
hi(0, "DropBarIconKindKeyword", { fg = "#629cf8" })
hi(0, "DropBarIconKindList", { fg = "#a0acfe" })
hi(0, "DropBarIconKindMacro", { fg = "#f38ca9" })
hi(0, "DropBarIconKindMarkdownH1", {})
hi(0, "DropBarIconKindMarkdownH2", {})
hi(0, "DropBarIconKindMarkdownH3", {})
hi(0, "DropBarIconKindMarkdownH4", {})
hi(0, "DropBarIconKindMarkdownH5", {})
hi(0, "DropBarIconKindMarkdownH6", {})
hi(0, "DropBarIconKindMethod", { fg = "#89b5fa" })
hi(0, "DropBarIconKindModule", { fg = "#89b5fa" })
hi(0, "DropBarIconKindNamespace", {})
hi(0, "DropBarIconKindNull", { fg = "#e8b1b0" })
hi(0, "DropBarIconKindNumber", { fg = "#ea9eab" })
hi(0, "DropBarIconKindObject", { fg = "#629cf8" })
hi(0, "DropBarIconKindOperator", { fg = "#b4c2d5" })
hi(0, "DropBarIconKindPackage", { fg = "#89b5fa" })
hi(0, "DropBarIconKindPair", { fg = "#f2cece" })
hi(0, "DropBarIconKindProperty", { fg = "#fffac2" })
hi(0, "DropBarIconKindReference", { fg = "#f38ca9" })
hi(0, "DropBarIconKindRepeat", { fg = "#629cf8" })
hi(0, "DropBarIconKindScope", {})
hi(0, "DropBarIconKindSpecifier", {})
hi(0, "DropBarIconKindStatement", { fg = "#629cf8" })
hi(0, "DropBarIconKindString", { fg = "#f2cece" })
hi(0, "DropBarIconKindStruct", { fg = "#89b5fa" })
hi(0, "DropBarIconKindSwitchStatement", { fg = "#629cf8" })
hi(0, "DropBarIconKindType", { fg = "#f9e1ae" })
hi(0, "DropBarIconKindTypeParameter", { fg = "#89b5fa" })
hi(0, "DropBarIconKindUnit", { fg = "#fffac2" })
hi(0, "DropBarIconKindValue", { fg = "#ea9eab" })
hi(0, "DropBarIconKindVariable", { fg = "#f2cece" })
hi(0, "DropBarIconKindWhileStatement", { fg = "#629cf8" })
hi(0, "DropBarIconUIIndicator", { fg = "#a0acfe" })
hi(0, "DropBarIconUIPickPivot", { fg = "#c94745" })
hi(0, "DropBarIconUISeparator", { fg = "#89b5fa" })
hi(0, "DropBarIconUISeparatorMenu", { fg = "#89b5fa" })
hi(0, "DropBarMenuCurrentContext", { bg = "#2e304d", fg = "#89b5fa" })
hi(0, "DropBarMenuFloatBorder", { fg = "#2c3354" })
hi(0, "DropBarMenuHoverEntry", { bg = "#3d4151" })
hi(0, "DropBarMenuHoverIcon", { reverse = true })
hi(0, "DropBarMenuHoverSymbol", { bold = true })
hi(0, "DropBarMenuNormalFloat", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "DropBarPreview", { bg = "#3d4151" })
hi(0, "EdgyIcon", {})
hi(0, "EdgyIconActive", { fg = "#e8b1b0" })
hi(0, "EdgyNormal", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "EdgyTitle", { fg = "#5ee4c7" })
hi(0, "EdgyWinBar", { fg = "#bcdaf5" })
hi(0, "EndOfBuffer", {})
hi(0, "Error", { fg = "#c94745" })
hi(0, "ErrorMsg", { fg = "#f38ca9" })
hi(0, "Exception", { fg = "#629cf8" })
hi(0, "FidgetTask", { fg = "#e4f0fb" })
hi(0, "FidgetTitle", { fg = "#89b5fa" })
hi(0, "Float", { fg = "#ea9eab" })
hi(0, "FoldColumn", {})
hi(0, "Folded", { fg = "#7e92a9" })
hi(0, "Function", { fg = "#4dccff" })
hi(0, "GitSignsAdd", { fg = "#5ee4c7" })
hi(0, "GitSignsAddInline", { bg = "#e4f0fb", fg = "#303340" })
hi(0, "GitSignsAddLn", { fg = "#5ee4c7" })
hi(0, "GitSignsAddLnInline", { bg = "#e4f0fb", fg = "#303340" })
hi(0, "GitSignsAddNr", { fg = "#5ee4c7" })
hi(0, "GitSignsAddPreview", { fg = "#5ee4c7" })
hi(0, "GitSignsChange", { fg = "#fffac2" })
hi(0, "GitSignsChangeInline", { bg = "#e4f0fb", fg = "#303340" })
hi(0, "GitSignsChangeLn", { fg = "#fffac2" })
hi(0, "GitSignsChangeLnInline", { bg = "#e4f0fb", fg = "#303340" })
hi(0, "GitSignsChangeNr", { fg = "#fffac2" })
hi(0, "GitSignsChangePreview", { fg = "#fffac2" })
hi(0, "GitSignsChangedelete", { fg = "#fffac2" })
hi(0, "GitSignsChangedeleteLn", { fg = "#fffac2" })
hi(0, "GitSignsChangedeleteNr", { fg = "#fffac2" })
hi(0, "GitSignsCurrentLineBlame", {})
hi(0, "GitSignsDelete", { fg = "#f38ca9" })
hi(0, "GitSignsDeleteInline", { bg = "#e4f0fb", fg = "#303340" })
hi(0, "GitSignsDeleteLnInline", { bg = "#e4f0fb", fg = "#303340" })
hi(0, "GitSignsDeleteNr", { fg = "#f38ca9" })
hi(0, "GitSignsDeletePreview", { fg = "#f38ca9" })
hi(0, "GitSignsDeleteVirtLn", { fg = "#f38ca9" })
hi(0, "GitSignsDeleteVirtLnInLine", { bg = "#e4f0fb", fg = "#303340" })
hi(0, "GitSignsStagedAdd", { fg = "#2f7263" })
hi(0, "GitSignsStagedAddLn", { fg = "#2f7263" })
hi(0, "GitSignsStagedAddNr", { fg = "#2f7263" })
hi(0, "GitSignsStagedChange", { fg = "#7f7d61" })
hi(0, "GitSignsStagedChangeLn", { fg = "#7f7d61" })
hi(0, "GitSignsStagedChangeNr", { fg = "#7f7d61" })
hi(0, "GitSignsStagedChangedelete", { fg = "#7f7d61" })
hi(0, "GitSignsStagedChangedeleteLn", { fg = "#7f7d61" })
hi(0, "GitSignsStagedChangedeleteNr", { fg = "#7f7d61" })
hi(0, "GitSignsStagedDelete", { fg = "#794654" })
hi(0, "GitSignsStagedDeleteNr", { fg = "#794654" })
hi(0, "GitSignsStagedTopdelete", { fg = "#794654" })
hi(0, "GitSignsStagedTopdeleteNr", { fg = "#794654" })
hi(0, "GitSignsTopdelete", { fg = "#f38ca9" })
hi(0, "GitSignsTopdeleteNr", { fg = "#f38ca9" })
hi(0, "GitSignsUntracked", { fg = "#5ee4c7" })
hi(0, "GitSignsUntrackedLn", { fg = "#5ee4c7" })
hi(0, "GitSignsUntrackedNr", { fg = "#5ee4c7" })
hi(0, "GitSignsVirtLnum", { fg = "#f38ca9" })
hi(0, "GlanceBorderTop", { bg = "#303340" })
hi(0, "GlanceFoldIcon", { fg = "#89b5fa" })
hi(0, "GlanceIndent", { fg = "#89b5fa" })
hi(0, "GlanceListBorderBottom", { bg = "#303340" })
hi(0, "GlanceListCount", { fg = "#f38ca9" })
hi(0, "GlanceListCursorLine", { fg = "#f2cece" })
hi(0, "GlanceListEndOfBuffer", { fg = "#89b5fa" })
hi(0, "GlanceListFilename", { bg = "#303340", fg = "#89b5fa" })
hi(0, "GlanceListFilepath", { bg = "#303340", fg = "#89b5fa" })
hi(0, "GlanceListMatch", { fg = "#89b5fa" })
hi(0, "GlanceListNormal", { bg = "#303340" })
hi(0, "GlancePreviewBorderBottom", { bg = "#393c4c" })
hi(0, "GlancePreviewEndOfBuffer", { bg = "#393c4c" })
hi(0, "GlancePreviewLineNr", { bg = "#393c4c" })
hi(0, "GlancePreviewMatch", { bg = "#393c4c", fg = "#89b5fa" })
hi(0, "GlancePreviewNormal", { bg = "#393c4c", fg = "#e4f0fb" })
hi(0, "GlancePreviewSignColumn", { bg = "#393c4c", fg = "#89b5fa" })
hi(0, "GlanceWinBarFilename", { bg = "#303340", fg = "#89b5fa" })
hi(0, "GlanceWinBarFilepath", { bg = "#303340", fg = "#89b5fa" })
hi(0, "GlanceWinBarTitle", { bg = "#303340", fg = "#89b5fa" })
hi(0, "HydraAmaranth", { bold = true, fg = "#ff1757" })
hi(0, "HydraBlue", { bold = true, fg = "#5ebcf6" })
hi(0, "HydraBorder", { fg = "#2c3354" })
hi(0, "HydraHint", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "HydraPink", { bold = true, fg = "#ff55de" })
hi(0, "HydraRed", { bold = true, fg = "#ff5733" })
hi(0, "HydraTeal", { bold = true, fg = "#00a1a1" })
hi(0, "Identifier", { fg = "#add8ff" })
hi(0, "IncSearch", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "Include", { link = "Macro" })
hi(0, "Keyword", { fg = "#629cf8" })
hi(0, "Label", { fg = "#629cf8" })
hi(0, "LazyButton", { bg = "#373a49" })
hi(0, "LazyButtonActive", { bg = "#3d4151" })
hi(0, "LazyComment", { fg = "#7dacd9" })
hi(0, "LazyCommit", { fg = "#add8ff" })
hi(0, "LazyCommitIssue", { fg = "#ea9eab" })
hi(0, "LazyCommitScope", {})
hi(0, "LazyCommitType", { fg = "#5ee4c7" })
hi(0, "LazyDimmed", {})
hi(0, "LazyDir", { fg = "#add8ff" })
hi(0, "LazyH1", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "LazyH2", {})
hi(0, "LazyLocal", { fg = "#e8b1b0" })
hi(0, "LazyNoCond", { fg = "#fff694" })
hi(0, "LazyNormal", {})
hi(0, "LazyProgressDone", { fg = "#e8b1b0" })
hi(0, "LazyProgressTodo", { bold = true, fg = "#8f94c1" })
hi(0, "LazyProp", {})
hi(0, "LazyReasonCmd", { fg = "#b4c2d5" })
hi(0, "LazyReasonEvent", { fg = "#e8b1b0" })
hi(0, "LazyReasonFt", { fg = "#8adeff" })
hi(0, "LazyReasonImport", { fg = "#add8ff" })
hi(0, "LazyReasonKeys", { fg = "#629cf8" })
hi(0, "LazyReasonPlugin", { fg = "#a0acfe" })
hi(0, "LazyReasonRuntime", { fg = "#f38ca9" })
hi(0, "LazyReasonSource", { fg = "#8adeff" })
hi(0, "LazyReasonStart", { fg = "#add8ff" })
hi(0, "LazySpecial", { fg = "#b1c0d3" })
hi(0, "LazyTaskError", { fg = "#f38ca9" })
hi(0, "LazyTaskOutput", { fg = "#5ee4c7" })
hi(0, "LazyUrl", { fg = "#add8ff" })
hi(0, "LazyValue", { fg = "#f2cece" })
hi(0, "LeapBackdrop", { fg = "#7dacd9" })
hi(0, "LeapLabelPrimary", { fg = "#e8b1b0" })
hi(0, "LeapLabelSecondary", { fg = "#f38ca9" })
hi(0, "LeapLabelSelected", { fg = "#89b5fa" })
hi(0, "LeapMatch", { fg = "#e8b1b0" })
hi(0, "LightBulbFloatWin", { fg = "#74c6ec" })
hi(0, "LightBulbLine", { bg = "#373a49" })
hi(0, "LightBulbNumber", { fg = "#74c6ec" })
hi(0, "LightBulbSign", { fg = "#74c6ec" })
hi(0, "LightBulbVirtualText", { fg = "#74c6ec" })
hi(0, "LineNr", { bold = true, fg = "#8f94c1" })
hi(0, "LspCodeLens", { fg = "#e4f0fb" })
hi(0, "LspCodeLensSeparator", { fg = "#8da2bf" })
hi(0, "LspInfoBorder", { fg = "#629cf8" })
hi(0, "LspInfoFiletype", { fg = "#fffac2" })
hi(0, "LspInfoList", { fg = "#4dccff" })
hi(0, "LspInfoTip", { fg = "#7dacd9" })
hi(0, "LspInfoTitle", { fg = "#5ee4c7" })
hi(0, "LspInlayHint", { fg = "#7e92a9" })
hi(0, "LspReferenceRead", { fg = "#e4f0fb" })
hi(0, "LspReferenceText", { fg = "#e4f0fb" })
hi(0, "LspReferenceWrite", { fg = "#e4f0fb" })
hi(0, "LspSignatureActiveParameter", { fg = "#5ee4c7" })
hi(0, "Macro", { fg = "#f38ca9" })
hi(0, "MasonError", { fg = "#f38ca9" })
hi(0, "MasonHeader", { bg = "#262840", bold = true, fg = "#5ee4c7" })
hi(0, "MasonHeaderSecondary", { bg = "#373a49", bold = true, fg = "#8adeff" })
hi(0, "MasonHeading", { bold = true, fg = "#b4befe" })
hi(0, "MasonHighlight", { fg = "#a6e3a1" })
hi(0, "MasonHighlightBlock", { bg = "#262840", fg = "#8adeff" })
hi(
  0,
  "MasonHighlightBlockBold",
  { bg = "#373a49", bold = true, fg = "#8adeff" }
)
hi(
  0,
  "MasonHighlightBlockBoldSecondary",
  { bg = "#262840", bold = true, fg = "#5ee4c7" }
)
hi(0, "MasonHighlightBlockSecondary", { bg = "#373a49", fg = "#8adeff" })
hi(0, "MasonHighlightSecondary", { fg = "#caa6f7" })
hi(0, "MasonMuted", { fg = "#89b5fa" })
hi(0, "MasonMutedBlock", { bg = "#262840" })
hi(0, "MasonMutedBlockBold", { bg = "#fffac2", bold = true, fg = "#000000" })
hi(0, "MatchParen", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "MiniAnimateCursor", { nocombine = true, reverse = true })
hi(0, "MiniAnimateNormalFloat", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "MiniIndentscopePrefix", { bold = true })
hi(0, "MiniIndentscopeSymbol", { bold = true, fg = "#89b5fa" })
hi(0, "MiniIndentscopeSymbolOff", { bold = true, fg = "#89b5fa" })
hi(0, "MiniJump2dSpot", { bold = true, underline = true })
hi(0, "ModeMsg", { fg = "#5ee4c7" })
hi(0, "MoreMsg", { fg = "#5ee4c7" })
hi(0, "MsgArea", { fg = "#5ee4c7" })
hi(0, "NeoComposerYanked", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "NeotestAdapterName", { ctermfg = 9, fg = "#f70067" })
hi(0, "NeotestDir", { ctermfg = 14, fg = "#00f1f5" })
hi(0, "NeotestExpandMarker", { ctermfg = 248, fg = "#8094b4" })
hi(0, "NeotestFailed", { ctermfg = 9, fg = "#f70067" })
hi(0, "NeotestFile", { ctermfg = 14, fg = "#00f1f5" })
hi(0, "NeotestFocused", { bold = true, underline = true })
hi(0, "NeotestIndent", { ctermfg = 248, fg = "#8b8b8b" })
hi(0, "NeotestMarked", { bold = true, ctermfg = 130, fg = "#f79000" })
hi(0, "NeotestNamespace", { ctermfg = 13, fg = "#d484ff" })
hi(0, "NeotestPassed", { ctermfg = 10, fg = "#96f291" })
hi(0, "NeotestRunning", { ctermfg = 11, fg = "#ffec63" })
hi(0, "NeotestSkipped", { ctermfg = 14, fg = "#00f1f5" })
hi(0, "NeotestTarget", { ctermfg = 9, fg = "#f70067" })
hi(0, "NeotestWatching", { ctermfg = 11, fg = "#ffec63" })
hi(0, "NeotestWinSelect", { bold = true, ctermfg = 14, fg = "#00f1f5" })
hi(0, "NoiceCmdline", { fg = "#5ee4c7" })
hi(0, "NoiceCmdlineIcon", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconCalculator", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconCmdline", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconFilter", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconHelp", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconIncRename", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconInput", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconLua", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconPython", { fg = "#74c6ec" })
hi(0, "NoiceCmdlineIconSearch", { fg = "#fff694" })
hi(0, "NoiceCmdlinePopup", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "NoiceCmdlinePopupBorder", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderCalculator", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderCmdline", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderFilter", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderHelp", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderIncRename", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderInput", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderLua", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderPython", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePopupBorderSearch", { fg = "#fff694" })
hi(0, "NoiceCmdlinePopupTitle", { fg = "#74c6ec" })
hi(0, "NoiceCmdlinePrompt", { fg = "#5ee4c7" })
hi(0, "NoiceCompletionItemKindClass", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindColor", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindConstant", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindConstructor", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindDefault", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindEnum", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindEnumMember", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindField", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindFile", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindFolder", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindFunction", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindInterface", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindKeyword", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindMethod", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindModule", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindProperty", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindSnippet", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindStruct", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindText", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindUnit", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindValue", { fg = "#a0acfe" })
hi(0, "NoiceCompletionItemKindVariable", { fg = "#a0acfe" })
hi(0, "NoiceConfirm", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "NoiceConfirmBorder", { fg = "#74c6ec" })
hi(0, "NoiceCursor", { bg = "#fefefe", fg = "#1f1f1f" })
hi(0, "NoiceFormatConfirm", { bg = "#373a49" })
hi(0, "NoiceFormatConfirmDefault", { bg = "#3d4151" })
hi(0, "NoiceFormatDate", { fg = "#a0acfe" })
hi(0, "NoiceFormatEvent", {})
hi(0, "NoiceFormatKind", {})
hi(0, "NoiceFormatLevelDebug", {})
hi(0, "NoiceFormatLevelError", { fg = "#d74947" })
hi(0, "NoiceFormatLevelInfo", { fg = "#74c6ec" })
hi(0, "NoiceFormatLevelOff", {})
hi(0, "NoiceFormatLevelTrace", {})
hi(0, "NoiceFormatLevelWarn", { fg = "#fff694" })
hi(0, "NoiceFormatProgressDone", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "NoiceFormatProgressTodo", { bg = "#373a49" })
hi(0, "NoiceFormatTitle", { fg = "#5ee4c7" })
hi(0, "NoiceHiddenCursor", { blend = 100, nocombine = true })
hi(0, "NoiceLspProgressClient", { fg = "#5ee4c7" })
hi(0, "NoiceLspProgressSpinner", { fg = "#e8b1b0" })
hi(0, "NoiceLspProgressTitle", {})
hi(0, "NoiceMini", { fg = "#5ee4c7" })
hi(0, "NoicePopup", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "NoicePopupBorder", { fg = "#2c3354" })
hi(0, "NoicePopupmenu", { bg = "#373a49", fg = "#e4f0fb" })
hi(0, "NoicePopupmenuBorder", { fg = "#2c3354" })
hi(0, "NoicePopupmenuMatch", { fg = "#a0acfe" })
hi(0, "NoicePopupmenuSelected", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "NoiceScrollbar", { bg = "#7e92a9", fg = "#000000" })
hi(0, "NoiceScrollbarThumb", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "NoiceSplit", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "NoiceSplitBorder", { fg = "#2c3354" })
hi(0, "NoiceVirtualText", { fg = "#74c6ec" })
hi(0, "NonText", {})
hi(0, "Normal", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "NormalFloat", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "NormalNC", { bg = "#262840", fg = "#88a9c8" })
hi(0, "NotifyDEBUGBorder", { fg = "#fab285" })
hi(0, "NotifyDEBUGIcon", { fg = "#fab285" })
hi(0, "NotifyDEBUGTitle", { fg = "#fab285", italic = true })
hi(0, "NotifyERRORBorder", { fg = "#f38ca9" })
hi(0, "NotifyERRORIcon", { fg = "#f38ca9" })
hi(0, "NotifyERRORTitle", { fg = "#f38ca9", italic = true })
hi(0, "NotifyINFOBorder", { fg = "#89b5fa" })
hi(0, "NotifyINFOIcon", { fg = "#89b5fa" })
hi(0, "NotifyINFOTitle", { fg = "#89b5fa", italic = true })
hi(0, "NotifyTRACEBorder", { fg = "#f5dfdb" })
hi(0, "NotifyTRACEIcon", { fg = "#f5dfdb" })
hi(0, "NotifyTRACETitle", { fg = "#f5dfdb", italic = true })
hi(0, "NotifyWARNBorder", { fg = "#f9e1ae" })
hi(0, "NotifyWARNIcon", { fg = "#f9e1ae" })
hi(0, "NotifyWARNTitle", { fg = "#f9e1ae", italic = true })
hi(0, "NullLsInfoBorder", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "NullLsInfoHeader", { fg = "#629cf8" })
hi(0, "NullLsInfoSources", { fg = "#5ee4c7" })
hi(0, "NullLsInfoTitle", { fg = "#fffac2" })
hi(0, "Number", { fg = "#ea9eab" })
hi(0, "Operator", { fg = "#b4c2d5" })
hi(0, "PlayingSymbol", { bg = "#26283f", fg = "#99c794" })
hi(0, "Pmenu", { bg = "#373a49", fg = "#e4f0fb" })
hi(0, "PmenuSbar", { bg = "#7e92a9", fg = "#000000" })
hi(0, "PmenuSel", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "PmenuThumb", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "PreProc", { link = "Macro" })
hi(0, "Preview", { fg = "#ff9e64" })
hi(0, "RecordingSymbol", { bg = "#26283f", fg = "#ec5f67" })
hi(0, "Repeat", { fg = "#629cf8" })
hi(0, "Search", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "SignColumn", {})
hi(0, "Special", { fg = "#a0acfe" })
hi(0, "SpecialChar", { fg = "#a0acfe" })
hi(0, "SpecialComment", { fg = "#b4befe" })
hi(0, "SpecialKey", { fg = "#f38ca9" })
hi(0, "SpellBad", { fg = "#f38ca9" })
hi(0, "SpellCap", { fg = "#fffac2" })
hi(0, "SpellLocal", { fg = "#5ee4c7" })
hi(0, "SpellRare", { fg = "#8adeff" })
hi(0, "Statement", { fg = "#629cf8" })
hi(0, "StatusLine", { bg = "#262840" })
hi(0, "StatusLineNC", { bg = "#282a43" })
hi(0, "StorageClass", { fg = "#629cf8" })
hi(0, "String", { fg = "#f2cece" })
hi(0, "Structure", { fg = "#fffac2" })
hi(0, "Substitute", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "TabLine", { bg = "#303340", bold = true, fg = "#7e92a9" })
hi(0, "TabLineError", { bg = "#303340", fg = "#d74947" })
hi(0, "TabLineFill", {})
hi(0, "TabLineInfo", { bg = "#303340", fg = "#74c6ec" })
hi(0, "TabLineSel", { bg = "#5ee4c7", bold = true, fg = "#1b1e27" })
hi(0, "TabLineWarn", { bg = "#303340", fg = "#fff694" })
hi(0, "Tag", { fg = "#a2c4fb" })
hi(0, "TelescopeBorder", { fg = "#89b5fa" })
hi(0, "TermCursor", { bg = "#e4f0fb", fg = "#303340" })
hi(0, "TermCursorNC", { fg = "#e4f0fb" })
hi(0, "Title", { fg = "#5ee4c7" })
hi(0, "Todo", { fg = "#fffac2" })
hi(0, "ToggleTermName", { fg = "#7e92a9" })
hi(0, "Type", { fg = "#fffac2" })
hi(0, "Typedef", { fg = "#fffac2" })
hi(0, "UfoFoldedFg", { fg = "#e4f0fb" })
hi(0, "Underlined", { underline = true })
hi(0, "VertSplit", { fg = "#7e92a9" })
hi(0, "Visual", { bg = "#3d4151" })
hi(0, "VisualNOS", { bg = "#3d4151" })
hi(0, "WhichKey", { fg = "#f2cece" })
hi(0, "WhichKeyBorder", { fg = "#89b5fa" })
hi(0, "WhichKeyDesc", { fg = "#f5c2e7" })
hi(0, "WhichKeyFloat", { bg = "#262840", fg = "#e4f0fb" })
hi(0, "WhichKeyGroup", { fg = "#89b5fa" })
hi(0, "WhichKeySeparator", { fg = "#7dacd9" })
hi(0, "WhichKeyValue", { fg = "#7dacd9" })
hi(0, "Whitespace", {})
hi(0, "WildMenu", { fg = "#8adeff" })
hi(0, "WinBar", { fg = "#bcdaf5" })
hi(0, "WinBarNC", { link = "NormalNC" })
hi(0, "WinSeparator", { fg = "#2c3354" })
hi(0, "YankyPut", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "YankyYanked", { bg = "#5ee4c7", fg = "#1b1e27" })
hi(0, "iCursor", { link = "Cursor" })

-- No terminal colors defined