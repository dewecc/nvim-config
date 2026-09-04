local keybinds = require("keybinds")

return {
	"saghen/blink.cmp",
	dependencies = {
		"saghen/blink.lib",
		"rafamadriz/friendly-snippets",
	},
	build = function()
		require("blink.cmp").build():pwait()
	end,

	opts = {
		keymap = {
			preset = "none",
			[keybinds.super_c .. "-Enter>"] = { "accept" },
			[keybinds.super_c .. "-Down>"] = { "select_next" },
			[keybinds.super_c .. "-Up>"] = { "select_prev" },
			[keybinds.super_c .. "-Esc>"] = { "hide" },
		},
		completion = { documentation = { auto_show = false } },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
		fuzzy = { implementation = "rust" },
	},
}
