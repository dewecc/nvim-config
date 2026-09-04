local keybinds = require("keybinds")

local toggle_file_explorer = function()
	local curr_ft = vim.bo.filetype
	if curr_ft:match("neo%-tree") then
		vim.cmd("wincmd p")
	else
		vim.cmd("Neotree focus")
	end
end

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},

	keys = {
		{ "<leader><S-e>", "<Cmd>Neotree toggle<CR>", mode = { "n" }, desc = "Toggle file explorer" },
		{
			"<leader>e",
			toggle_file_explorer,
			mode = { "n" },
			desc = "Focus/unfocus file explorer",
		},
		{
			keybinds.super_c .. "-e>",
			toggle_file_explorer,
			mode = { "n", "i", "v", "c" },
			desc = "Focus/unfocus file explorer",
		},
	},
}
