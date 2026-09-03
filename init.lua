Xx0;9u≈vim.loader.enable()

vim.o.number = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.clipboard = 'unnamedplus'
vim.o.confirm = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require("lazy").setup({
	spec = {
		-- Treesitter
		{
			"nvim-treesitter/nvim-treesitter",
			lazy = false,
			build = ':TSUpdate'
		},
		-- Trouble
		{
			"folke/trouble.nvim",
		},
		-- Mason lspconfig
		{
			"mason-org/mason-lspconfig.nvim",
			dependencies = {
				{ "mason-org/mason.nvim", opts = {} },
				"neovim/nvim-lspconfig",
			},
			opts = {
				ensure_installed = { "clangd", "autotools_ls", "rust_analyzer", "lua_ls" },
				automatic_enable = true
			},
		}
	},
	checker = { enabled = true },
})
