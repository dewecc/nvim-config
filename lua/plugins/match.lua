local keybinds = require("keybinds")

return {
	"ankushbhagats/match.nvim",

	opts = {},
	config = {
		prefix = "",
		anchor = "NE",
		style = "minimal",
		border = "rounded",
		border_hl = "Function",
	},

	keys = {
		{ keybinds.super_c .. "-S-f>", "<Cmd>Match<CR>", mode = { "n", "i", "v", "c" }, desc = "Open search/replace" },
	},
}
