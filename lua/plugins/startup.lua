return {
	{
		'startup-nvim/startup.nvim',
		dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
		config = function()
			require'startup'.setup()
		end
	},
	{
		'vladdoster/remember.nvim',
		config = [[ require('remember') ]]
	}
}
