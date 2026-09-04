return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		cmdline = { enabled = true },
		messages = { enabled = true },
		popupmenu = { enabled = true },
		lsp = {
			progress = { enabled = true },
			hover = { enabled = true },
			signature = { enabled = true },
			message = { enabled = true },
			documentation = { view = "hover" },
		},
		status = {},
	},
}
