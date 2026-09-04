local keybinds = require('keybinds')

return {
	'ankushbhagats/match.nvim',

	keys = {
		{ keybinds.super_c..'-S-f>', '<Cmd>Match<CR>', mode = { 'n', 'i', 'v', 'c' }, desc = 'Open search/replace' }
	}
}
