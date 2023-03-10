local lush = require('lush')
local p = require("minimus.palette")

local spec = {
	bg = p.gunmetal,
	bg2 = p.gunmetal.lighten(4),
	bg3 = p.gunmetal.lighten(8),
	kw = p.blue.darken(10),
	text = p.text,
}

local nobg = true

---@diagnostic disable: undefined-global
local base = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		CopilotStatusOk { fg = p.turquoise, bg = p.gunmetal },
		CopilotStatusError { fg = p.red, bg = p.gunmetal },
		Conceal { bg = 'none' },
		Normal { bg = nobg and 'none' or spec.bg, fg = spec.text },
		NormalNC { bg = nobg and 'none' or spec.bg, fg = spec.text.darken(30).desaturate(50) },
		NormalFloat { bg = spec.bg2, fg = spec.text },
		Visual { bg = spec.bg3 },
		VisualNOS { bg = spec.bg3 },
		NonText { bg = 'none' },
		Directory { fg = p.blue },
		DiffAdd { fg = p.turquoise },
		DiffChange { fg = p.lemon_chiffon },
		DiffDelete { fg = p.red },
		DiffText { fg = p.pale_azure },
		EndOfBuffer { bg = 'none' },
		Whitespace { bg = 'none' },
		WildMenu = { fg = p.pale_azure },
		--
		-- Cursor
		Cursor { fg = '#1f1f1f', bg = '#fefefe' },
		iCursor { Cursor },
		--
		-- Terminal
		TermCursor { bg = p.text, fg = p.gunmetal },
		TermCursorNC { fg = p.text },
		ErrorMsg { fg = p.red },
		--
		-- Windows
		VertSplit { fg = p.cool_gray, bg = 'none' },
		Winseparator { fg = p.cool_gray, bg = 'none' },
		--
		-- Folds
		Folded { fg = p.colombia_blue, bg = 'none' },
		FoldColumn { bg = 'none' },
		--
		-- Sign Column
		SignColumn { bg = 'none' },
		LineNr { bg = 'none', fg = p.colombia_blue },
		CursorLineNr {
			fg = spec.text.lighten(10),
			bg = 'none',
		},
		--
		-- ModeMsg
		ModeMsg { fg = p.turquoise },
		MsgArea { fg = p.turquoise },
		MoreMsg { fg = p.turquoise },
		--
		-- Popup
		Pmenu { bg = spec.bg2, fg = spec.text },
		PmenuSel { bg = p.turquoise, fg = p.raisin_black },
		PmenuSbar { bg = p.cool_gray, fg = p.cool_gray.readable() },
		PmenuThumb { bg = p.turquoise, fg = p.raisin_black },
		--
		-- Search
		IncSearch { fg = p.raisin_black, bg = p.turquoise },
		Search { fg = p.raisin_black, bg = p.turquoise },
		Substitute { fg = p.raisin_black, bg = p.turquoise },
		MatchParen { fg = p.raisin_black, bg = p.turquoise },
		--
		-- Color column
		ColorColumn { bg = spec.bg2 },
		--
		-- Tabline
		TabLine { bg = 'none' },
		TabLineSel { bg = 'none' },
		CursorLine { bg = spec.bg2 },
		CursorColumn { bg = spec.bg2 },
		--
		--Statusline
		StatusLine { bg = spec.bg },
		StatusLineNC { bg = spec.bg },
		--
		-- Spell
		SpecialKey { fg = p.red },
		SpellBad { fg = p.red },
		SpellCap { fg = p.lemon_chiffon },
		SpellLocal { fg = p.turquoise },
		SpellRare { fg = p.pale_azure },
		--
		-- Title
		Title { fg = p.turquoise },
		--
		-- LSP
		LSPInlayHint { bg = 'none', fg = p.cool_gray },
		--
		-- Syntax
		Comment { fg = p.uranian_blue.darken(20).desaturate(45) },
		--
		Constant { fg = p.tea_rose },
		String { fg = p.flamingo.darken(10) },
		Character { fg = p.pale_azure },
		Number { fg = p.maroon },
		Boolean { fg = p.maroon },
		Float { fg = p.maroon },
		--
		Identifier { fg = p.uranian_blue },
		Function { fg = p.turquoise },
		--
		Statement { fg = spec.kw },
		Conditional { fg = spec.kw },
		Repeat { fg = spec.kw },
		Label { fg = spec.kw },
		Exception { fg = spec.kw },
		Operator { fg = p.cadet_gray.lighten(35) },
		Keyword { fg = spec.kw },
		--
		Macro { fg = p.red },
		PreProc { Macro },
		Include { Macro },
		Define { Macro },
		--
		Type { fg = p.lemon_chiffon },
		StorageClass { fg = p.lemon_chiffon },
		Structure { fg = p.lemon_chiffon },
		Typedef { fg = p.lemon_chiffon },
		--
		Special { fg = p.lavender.darken(5) },
		SpecialChar { fg = p.lavender.darken(5) },
		Tag { fg = spec.kw.lighten(40) },
		Delimiter { fg = p.cadet_gray.lighten(30) },
		SpecialComment { fg = p.lavender },
		Debug { fg = p.red },
		--
		Error { bg = 'none', fg = p.persian_red.lighten(10) },
		Todo { fg = p.lemon_chiffon, bg = 'none' },
		--
		-- LSP
		LspReferenceText { fg = spec.text },
		LspReferenceRead { fg = spec.text },
		LspReferenceWrite { fg = spec.text },
		LspCodeLens { bg = 'none', fg = p.text },
		LspCodeLensSeparator { bg = 'none', fg = p.cadet_gray },
		LspSignatureActiveParameter { bg = 'none', fg = p.turquoise },
		--
		-- Diagnostic
		DiagnosticError { fg = p.persian_red.lighten(15).saturate(20) },
		DiagnosticWarn { fg = p.lemon_chiffon.darken(10).saturate(10) },
		DiagnosticInfo { fg = p.sapphire },
		DiagnosticHint { fg = p.sky },
		-- DiagnosticVirtualTextError { }
		-- DiagnosticVirtualTextWarn  { }
		-- DiagnosticVirtualTextInfo  { }
		-- DiagnosticVirtualTextHint  { }
		-- DiagnosticUnderlineError   { }
		-- DiagnosticUnderlineWarn    { }
		-- DiagnosticUnderlineInfo    { }
		-- DiagnosticUnderlineHint    { }
		-- DiagnosticFloatingError    { }
		-- DiagnosticFloatingWarn     { }
		-- DiagnosticFloatingInfo     { }
		-- DiagnosticFloatingHint     { }
		-- DiagnosticSignError        { }
		-- DiagnosticSignWarn         { }
		-- DiagnosticSignInfo         { }
		-- DiagnosticSignHint         { }

		--
		-- Treesitter
		sym('@text.literal') {},
		sym('@string.special') { fg = p.lavender.darken(5) },
		sym('@string.escape') { fg = p.lavender.darken(5) },
		sym('@text.title') { fg = p.turquoise }, -- Title
		sym('@text.reference') { fg = p.pale_azure }, -- Identifier
		sym('@constant.macro') { Macro }, -- Define
		sym('@define') { Macro }, -- Define
		sym('@include') { Macro }, -- Include
		sym('@preproc') { Macro }, -- PreProc
		sym('@function.macro') { Macro }, -- Macro
		sym('@punctuation') { fg = p.cadet_gray.lighten(30) }, -- Delimiter
		sym('@function') { fg = Function.fg }, -- Function
		sym('@method') { fg = p.pale_azure.mix(Function.fg, 50) }, -- Function
		sym('@namespace') { fg = p.pale_azure }, -- Identifier
		sym('@structure') { fg = p.pale_azure }, -- Structure
		sym('@parameter') { gui = 'bold', cterm = 'bold', term = 'bold', fg = p.lavender.lighten(10) }, -- Identifier
		sym('@field') { Identifier }, -- Identifier
		sym('@property') { fg = p.uranian_blue.darken(12) }, -- Identifier
		sym('@variable') { Identifier }, -- Identifier
		sym('@macro') { Macro }, -- Macro
		sym('@string') { String }, -- String
		sym('@character') { Character }, -- Character
		sym('@character.special') { SpecialChar }, -- SpecialChar
		sym('@number') { Number }, -- Number
		sym('@boolean') { Boolean }, -- Boolean
		sym('@float') { Float }, -- Float
		-- sym('@text.uri')          { }, -- Underlined
		-- sym('@text.underline')    { }, -- Underlined
		-- sym('@text.todo')         { }, -- Todo
		-- sym('@comment')           { }, -- Comment
		-- sym('@constant')          { }, -- Constant
		-- sym('@constant.builtin')  { }, -- Special
		-- sym('@function.builtin')  { }, -- Special
		-- sym('@constructor')       { }, -- Special
		-- sym('@conditional')       { }, -- Conditional
		-- sym('@repeat')            { }, -- Repeat
		-- sym('@label')             { }, -- Label
		-- sym('@operator')          { }, -- Operator
		-- sym('@keyword')           { }, -- Keyword
		-- sym('@exception')         { }, -- Exception
		-- sym('@type')              { }, -- Type
		-- sym('@type.definition')   { }, -- Typedef
		-- sym('@storageclass')      { }, -- StorageClass
		-- sym('@debug')             { }, -- Debug
		-- sym('@tag')               { }, -- Tag
	}
end)

local fidget = lush(function()
	return {
		FidgetTask { fg = p.text, bg = 'none' },
		FidgetTitle { fg = p.blue, bg = 'none' },
	}
end)

local aerial = lush(function()
	return {
		AerialLine { fg = p.lemon_chiffon, bg = 'none' },
		AerialGuide { fg = p.colombia_blue },
		AerialBooleanIcon { base.Boolean },
		AerialClassIcon { base.Type },
		AerialConstantIcon { base.Constant },
		AerialConstructorIcon { base.Function },
		AerialFieldIcon { base.Identifier },
		AerialFunctionIcon { base.Function },
		AerialMethodIcon { base.Function },
		AerialNamespaceIcon { fg = p.pale_azure },
		AerialNumberIcon { base.Number },
		AerialOperatorIcon { base.Operator },
		AerialTypeParameterIcon { base.Identifier },
		AerialPropertyIcon { base.Identifier },
		AerialStringIcon { base.String },
		AerialVariableIcon { base.Identifier },
		AerialEnumMemberIcon { base.Identifier },
		AerialEnumIcon { base.Type },
		AerialFileIcon { base.Identifier },
		AerialModuleIcon { base.Identifier },
		AerialPackageIcon { base.Identifier },
		AerialInterfaceIcon { base.Type },
		AerialStructIcon { base.Type },
		AerialEventIcon { base.Type },
		AerialArrayIcon { base.Constant },
		AerialObjectIcon { base.Type },
		AerialKeyIcon { base.Identifier },
		AerialNullIcon { base.Constant },
	}
end)

local harpoon = lush(function()
	return {
		HarpoonWindow = { fg = p.text, bg = 'none' },
		HarpoonBorder = { fg = p.blue },
	}
end)

local cmp = lush(function()
	return {
		CmpItemAbbr { fg = p.overlay2 },
		CmpItemAbbrDeprecated { fg = p.overlay0, gui = "strikethrough" },
		CmpItemKind { fg = p.blue },
		CmpItemMenu { fg = p.text },
		CmpItemAbbrMatch { fg = p.text, bold = true, gui = 'bold', cterm = 'bold', term = 'bold' },
		CmpItemAbbrMatchFuzzy { fg = p.text, bold = true, gui = 'bold', cterm = 'bold', term = 'bold' },
		-- kind support
		CmpItemKindSnippet { fg = p.mauve },
		CmpItemKindKeyword { fg = p.red },
		CmpItemKindText { fg = p.teal },
		CmpItemKindMethod { fg = p.blue },
		CmpItemKindConstructor { fg = p.blue },
		CmpItemKindFunction { fg = p.blue },
		CmpItemKindFolder { fg = p.blue },
		CmpItemKindModule { fg = p.blue },
		CmpItemKindConstant { fg = p.peach },
		CmpItemKindField { fg = p.lemon_chiffon },
		CmpItemKindProperty { fg = p.lemon_chiffon },
		CmpItemKindEnum { fg = p.lemon_chiffon },
		CmpItemKindUnit { fg = p.lemon_chiffon },
		CmpItemKindClass { fg = p.yellow },
		CmpItemKindVariable { fg = p.flamingo },
		CmpItemKindFile { fg = p.blue },
		CmpItemKindInterface { fg = p.lemon_chiffon },
		CmpItemKindColor { fg = p.red },
		CmpItemKindReference { fg = p.red },
		CmpItemKindEnumMember { fg = p.red },
		CmpItemKindStruct { fg = p.blue },
		CmpItemKindValue { fg = p.peach },
		CmpItemKindEvent { fg = p.blue },
		CmpItemKindOperator { fg = p.blue },
		CmpItemKindTypeParameter { fg = p.blue },
		CmpItemKindCopilot { fg = p.turquoise },
	}
end)

local gitsigns = lush(function()
	return {
		GitSignsAdd { fg = p.turquoise, gui = "bold", bold = true },
		GitSignsChange { fg = p.lemon_chiffon, gui = "bold", bold = true },
		GitSignsDelete { fg = p.red, gui = "bold", bold = true },

		GitSignsAddPreview { fg = p.turquoise },
		GitSignsChangePreview { fg = p.lemon_chiffon },
	}
end)

local trouble = lush(function()
	return {
		TroubleText = { fg = p.blue },
		TroubleCount = { fg = p.text },
		TroubleNormal = { fg = p.text },
	}
end)


local noice = lush(function()
	return {
		NoiceCmdline = { fg = p.text, bg = spec.bg },
		NoiceCmdlineIcon = { fg = p.blue },
		NoiceCmdlineIconSearch = { fg = p.lemon_chiffon },
		NoiceCmdlinePopupBorder = { fg = p.lavender },
		NoiceCmdlinePopupBorderSearch = { fg = p.lemon_chiffon },
		NoiceConfirmBorder = { fg = p.blue },
		NoiceMini = { fg = p.text },
	}
end)

local notify = lush(function()
	return {
		NotifyERRORBorder { fg = p.red },
		NotifyERRORIcon { fg = p.red },
		NotifyERRORTitle { fg = p.red, gui = 'italic' },
		NotifyWARNBorder { fg = p.yellow },
		NotifyWARNIcon { fg = p.yellow },
		NotifyWARNTitle { fg = p.yellow, gui = 'italic' },
		NotifyINFOBorder { fg = p.blue },
		NotifyINFOIcon { fg = p.blue },
		NotifyINFOTitle { fg = p.blue, gui = 'italic' },
		NotifyDEBUGBorder { fg = p.peach },
		NotifyDEBUGIcon { fg = p.peach },
		NotifyDEBUGTitle { fg = p.peach, gui = 'italic' },
		NotifyTRACEBorder { fg = p.rosewater },
		NotifyTRACEIcon { fg = p.rosewater },
		NotifyTRACETitle { fg = p.rosewater, gui = 'italic' },
	}
end)

local mason = lush(function()
	return {
		MasonHeader { fg = p.turquoise, bg = spec.bg, bold = true },
		MasonHeaderSecondary { fg = p.pale_azure, bg = spec.bg2, bold = true },
		MasonHighlight { fg = p.green },
		MasonHighlightBlock {
			bg = spec.bg,
			fg = p.pale_azure,
		},
		MasonHighlightBlockBold { bg = spec.bg2, fg = p.pale_azure, bold = true },
		MasonHighlightSecondary { fg = p.mauve },
		MasonHighlightBlockSecondary { fg = p.pale_azure, bg = spec.bg2 },
		MasonHighlightBlockBoldSecondary { fg = p.turquoise, bg = spec.bg, bold = true },
		MasonMuted { fg = p.blue },
		MasonMutedBlock { bg = spec.bg, fg = p.colombian_blue },
		MasonMutedBlockBold { bg = p.lemon_chiffon, fg = p.lemon_chiffon.readable(), bold = true },
		MasonError { fg = p.red },
		MasonHeading { fg = p.lavender, bold = true },
	}
end)

local telescope = lush(function()
	return {
		TelescopeBorder { fg = p.blue },
		TelescopeSelectionCaret = { fg = p.flamingo },
		TelescopeSelection = {
			fg = p.flamingo,
			bg = 'none',
		},
		TelescopeMatching = { fg = p.blue },
	}
end)

local whichkey = lush(function()
	return {
		WhichKey { fg = p.flamingo },
		WhichKeyGroup { fg = p.blue },
		WhichKeySeperator { fg = p.overlay0 },
		WhichKeyDesc { fg = p.pink },
		WhichKeyBorder { fg = p.blue },
		WhichKeyValue { fg = p.overlay0 },
	}
end)

local mini_cursorword = lush(function()
	return {
		MiniCursorword { gui = "underline" },
		MiniCursorwordCurrent { gui = "underline bold" }
	}
end)

local mini_jump2d = lush(function()
	return {
		MiniJump2dSpot { gui = "underline bold" },
	}
end)

local mini_indentscope = lush(function()
	return {
		MiniIndentscopeSymbol { fg = p.blue },
		MiniIndentscopePrefix { gui = "bold" },
	}
end)

local mini = lush.merge({
	mini_cursorword,
	mini_jump2d,
	mini_indentscope
})

local glance = lush(function()
	return {
		GlancePreviewNormal { fg = p.text, bg = p.gunmetal.lighten(5) },
		GlancePreviewMatch { fg = p.blue, bg = p.gunmetal.lighten(5) },
		-- GlancePreviewCursorLine { },
		GlancePreviewSignColumn { fg = p.blue, bg = p.gunmetal.lighten(5) },
		GlancePreviewEndOfBuffer { bg = p.gunmetal.lighten(5) },
		GlancePreviewLineNr { fg = p.colombian_blue, bg = p.gunmetal.lighten(5) },
		GlancePreviewBorderBottom { fg = p.none, bg = p.gunmetal.lighten(5) },
		GlanceWinBarFilename { fg = p.blue, bg = p.gunmetal },
		GlanceWinBarFilepath { fg = p.blue, bg = p.gunmetal },
		GlanceWinBarTitle { fg = p.blue, bg = p.gunmetal },
		GlanceListNormal { bg = p.gunmetal },
		GlanceListFilename { fg = p.blue, bg = p.gunmetal },
		GlanceListFilepath { fg = p.blue, bg = p.gunmetal },
		GlanceListCount { fg = p.red },
		GlanceListMatch { fg = p.blue },
		GlanceListCursorLine { fg = p.flamingo },
		GlanceListEndOfBuffer { fg = p.blue },
		GlanceListBorderBottom { fg = p.none, bg = p.gunmetal },
		GlanceFoldIcon { fg = p.blue },
		GlanceIndent { fg = p.blue },
		GlanceBorderTop { fg = p.none, bg = p.gunmetal },
	}
end)

local theme = lush.merge({
	base,
	fidget,
	aerial,
	cmp,
	gitsigns,
	trouble,
	harpoon,
	noice,
	notify,
	mason,
	telescope,
	whichkey,
	mini,
	glance
})

return theme
