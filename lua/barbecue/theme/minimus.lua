local p = require("minimus.palette").hex

local M = {
	normal = { fg = p.text, bg = 'none' },
	ellipsis = { fg = p.cool_gray },
	separator = { fg = p.cool_gray },
	modified = { fg = p.peach },
	dirname = { fg = p.colombia_blue },
	basename = { fg = p.lemon_chiffon, bold = true },
	context = { fg = p.colombia_blue },
	-- Same keys as navic
	context_file = { fg = p.lemon_chiffon },
	context_module = { fg = p.pale_azure },
	context_namespace = { fg = p.pale_azure },
	context_package = { fg = p.pale_azure },
	context_class = { fg = p.lemon_chiffon },
	context_method = { fg = p.pale_azure },
	context_property = { fg = p.pale_azure },
	context_field = { fg = p.pale_azure },
	context_constructor = { fg = p.pale_azure },
	context_enum = { fg = p.lemon_chiffon },
	context_interface = { fg = p.lemon_chiffon },
	context_function = { fg = p.pale_azure },
	context_variable = { fg = p.flamingo },
	context_constant = { fg = p.peach },
	context_string = { fg = p.lemon_chiffon },
	context_number = { fg = p.peach },
	context_boolean = { fg = p.peach },
	context_array = { fg = p.pale_azure },
	context_object = { fg = p.pale_azure },
	context_key = { fg = p.flamingo },
	context_null = { fg = p.peach },
	context_enum_member = { fg = p.red },
	context_struct = { fg = p.pale_azure },
	context_event = { fg = p.pale_azure },
	context_operator = { fg = p.pale_azure },
	context_type_parameter = { fg = p.pale_azure },
}

return M
