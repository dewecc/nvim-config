return {
	"nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
    	dependencies = {
      		"nvim-lua/plenary.nvim",
      		"MunifTanjim/nui.nvim",
      		"nvim-tree/nvim-web-devicons",
   	},

	keys = {
		{ '<leader><S-e>', '<Cmd>Neotree toggle<CR>', mode = { 'n' }, desc = 'Toggle file explorer' },
		{
			'<leader>e',
			function()
				local curr_ft = vim.bo.filetype
				if curr_ft:match('neo%-tree') then
					vim.cmd('wincmd p')
				else
					vim.cmd('Neotree focus')
				end
			end, 
			mode = { 'n' },
			desc = 'Focus/unfocus file explorer'
		},
	}
}
