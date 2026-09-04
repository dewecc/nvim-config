return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = { "clangd", "autotools_ls", "rust_analyzer", "lua_ls" },
		automatic_enable = true
	}
}
