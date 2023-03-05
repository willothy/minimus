local lush = require('lush')
local p = require("minimus.palette").hsl

-- Highlight(0, "CopilotStatusOk", {
-- 	fg = palette.teal1,
-- 	bg = palette.background1,
-- })
-- Highlight(0, "CopilotStatusError", {
-- 	fg = palette.red1,
-- 	bg = palette.background1,
-- })

local spec = {
	bg = p.gunmetal,
	text = p.text,
}

local nobg = true

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		CopilotStatusOk { fg = p.turquoise, bg = p.gunmetal },
		CopilotStatusError { fg = p.red, bg = p.gunmetal },
		Conceal { bg = 'none' },
		Normal { bg = nobg and 'none' or spec.bg, fg = spec.text },
		NormalFloat { bg = spec.bg.lighten(4), fg = spec.text },
		Visual { bg = spec.bg.lighten(8) },
		NonText { bg = 'none' },
		--
		-- Sign Column
		SignColumn { bg = 'none' },
		LineNr { bg = 'none', fg = p.colombia_blue },
		CursorLineNr {
			fg = spec.text.lighten(10),
			bg = 'none',
		},
		--
		-- Tabline
		TabLine { bg = 'none' },
		TabLineSel { bg = 'none' },
		CursorLine { bg = spec.bg.lighten(4) },
		CursorColumn { bg = spec.bg.lighten(4) },
		--
		--Statusline
		-- StatusLine { bg = spec.bg },
		-- StatusLineNC { bg = spec.bg },
		--
		-- LSP
		LSPInlayHint { bg = 'none', fg = p.cadet_gray },
		--
		-- Syntax
		Comment { fg = p.uranian_blue },
		--
		Constant { fg = p.tea_rose },
		String { fg = p.lavender_pink },
		Character { fg = p.pale_azure },
		Number { fg = p.maroon },
		Boolean { fg = p.maroon },
		Float { fg = p.maroon },
		--
		Identifier { fg = p.uranian_blue },
		Function { fg = p.turquoise },
		--
		Statement {},
		Conditional {},
		Repeat {},
		Label {},
		Exception {},
		Operator { fg = p.cadet_gray.lighten(35) },
		Keyword { fg = p.blue.darken(7) },
		--
		PreProc {},
		Include {},
		Define {},
		Macro { fg = p.red },
		--
		Type { fg = p.lemon_chiffon },
		StorageClass { fg = Keyword.fg },
		Structure { fg = Keyword.fg },
		Typedef { fg = Keyword.fg },
		--
		Special { fg = p.lavender.darken(5) },
		SpecialChar = { fg = p.lavender.darken(5) },
		Tag { bg = spec.bg.lighten(3) },
		Delimiter { fg = p.cadet_gray },
		SpecialComment { fg = p.lavender },
		Debug { fg = p.red },
		--
		Error { bg = 'none', fg = p.persian_red.lighten(10) },
		Todo { fg = p.lemon_chiffon, bg = 'none' },
		-- Treesitter
		sym '@text.literal' {},
		sym '@string.special' { fg = p.lavender.darken(5) },
		sym '@string.escape' { fg = p.lavender.darken(5) },
	}
end)

return theme
