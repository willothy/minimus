local palette = require('minimus.palette').hex

local minimus = {}

minimus.normal = {
	a = { fg = palette.raisin_black, bg = palette.turquoise, gui = 'bold' },
	b = { fg = palette.text, bg = palette.gunmetal },
	c = { fg = palette.cool_gray, bg = palette.none },
}

minimus.insert = {
	a = { fg = palette.raisin_black, bg = palette.pale_azure, gui = 'bold' },
	b = { fg = palette.text, bg = palette.gunmetal },
	c = { fg = palette.cool_gray, bg = palette.none },
}

minimus.visual = {
	a = { fg = palette.raisin_black, bg = palette.lemon_chiffon, gui = 'bold' },
	b = { fg = palette.text, bg = palette.gunmetal },
	c = { fg = palette.cool_gray, bg = palette.none },
}

minimus.replace = {
	a = { fg = palette.raisin_black, bg = palette.lavender_pink, gui = 'bold' },
	b = { fg = palette.text, bg = palette.gunmetal },
	c = { fg = palette.cool_gray, bg = palette.none },
}

minimus.command = {
	a = { fg = palette.text, bg = palette.gunmetal, gui = 'bold' },
	b = { fg = palette.text, bg = palette.gunmetal },
	c = { fg = palette.cool_gray, bg = palette.none },
}

minimus.inactive = {
	a = { fg = palette.blueGray3, bg = palette.gunmetal, gui = 'bold' },
	b = { fg = palette.blueGray3, bg = palette.gunmetal },
	c = { fg = palette.blueGray3, bg = palette.none },
}

return minimus
