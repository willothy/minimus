local p = require('minimus.palette').hex

local minimus = {}

minimus.normal = {
	a = { fg = p.raisin_black, bg = p.turquoise },
	b = { fg = p.text, bg = p.gunmetal },
	c = { fg = p.cool_gray, bg = p.none },
}

minimus.insert = {
	a = { fg = p.raisin_black, bg = p.pale_azure },
	b = { fg = p.text, bg = p.gunmetal },
	c = { fg = p.cool_gray, bg = p.none },
}

minimus.visual = {
	a = { fg = p.raisin_black, bg = p.lemon_chiffon },
	b = { fg = p.text, bg = p.gunmetal },
	c = { fg = p.cool_gray, bg = p.none },
}

minimus.replace = {
	a = { fg = p.raisin_black, bg = p.lavender_pink },
	b = { fg = p.text, bg = p.gunmetal },
	c = { fg = p.cool_gray, bg = p.none },
}

minimus.command = {
	a = { fg = p.text, bg = p.gunmetal },
	b = { fg = p.text, bg = p.gunmetal },
	c = { fg = p.cool_gray, bg = p.none },
}

minimus.inactive = {
	a = { fg = p.blueGray3, bg = p.gunmetal },
	b = { fg = p.blueGray3, bg = p.gunmetal },
	c = { fg = p.blueGray3, bg = p.none },
}

return minimus
