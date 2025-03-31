vim.opt.showtabline = 5;
require ("staline").setup {
	sections = {
		left = { '  ', '-mode', ' ', 'branch', ' '},
		mid = {},
		right = {'file_name', 'line_column' }
	},
	mode_colors = {
		i = "#d4be98",
		n = "#84a598",
		c = "#8fbf7f",
		v = "#fc802d",
	},
	defaults = {
		true_colors = true,
		line_column = " [%l/%L] :%c  ",
		branch_symbol = " "
	}
}
print("Staline tab config loaded")
