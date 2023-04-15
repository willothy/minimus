local hsl = require("lush").hsl

local palette = {}

palette.hex = {
	turquoise = "#5de4c7",
	tiffany_blue = "#85e2da",
	pale_azure = "#89ddff",
	uranian_blue = "#add7ff",
	powder_blue = "#91b4d5",
	cadet_gray = "#8da3bf",
	cool_gray = "#7f92aa",
	raisin_black = "#1b1e28",
	colombia_blue = "#c5d2df",
	persian_red = "#be3937",
	lemon_chiffon = "#fffac2",
	tea_rose = "#e8b1b0",
	lavender_pink = "#fcc5e9",
	pale_purple = "#fee4fc",
	pale_turquoise = "#baf5e8", --"#d0e9f5",
	white = "#f1f1f1",
	black = "#1f1f1f",
	----------------------
	gunmetal = "#303340",
	dark_blue = '#26283f',
	----------------------
	rosewater = "#F5E0DC",
	flamingo = "#F2CDCD",
	pink = "#F5C2E7",
	mauve = "#CBA6F7",
	red = "#F38BA8",
	maroon = "#EBA0AC",
	peach = "#FAB387",
	yellow = "#F9E2AF",
	green = "#A6E3A1",
	teal = "#94E2D5",
	sky = "#89DCEB",
	sapphire = "#74C7EC",
	blue = "#89B4FA",
	lavender = "#B4BEFE",
	---------------------
	text = "#e4f0fb",
	none = "none"
}

local mode_colors = {
	normal = palette.hex.turquoise,
	insert = palette.hex.pale_azure,
	visual = palette.hex.lemon_chiffon,
	replace = palette.hex.lavender_pink,
	command = palette.hex.peach,
	inactive = palette.hex.gunmetal,
}

local mode_map = {
	n = mode_colors.normal,
	i = mode_colors.insert,
	v = mode_colors.visual,
	V = mode_colors.visual,
	["\22"] = mode_colors.visual,
	c = mode_colors.command,
	s = mode_colors.visual,
	S = mode_colors.visual,
	["\19"] = mode_colors.visual,
	R = mode_colors.replace,
	r = mode_colors.replace,
	["!"] = mode_colors.command,
	t = mode_colors.command,
}

function palette.mode_color(mode)
	local mode = vim.fn.mode(1):sub(1, 1)
	return mode_map[mode]
end

for k, v in pairs(palette.hex) do
	if v == "none" then
		goto continue
	end
	palette[k] = hsl(v)
	::continue::
end

return palette
