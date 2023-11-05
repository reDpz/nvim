return {
	{
		"numToStr/Comment.nvim",
		opts = {
			sticky = true,
			toggler = {
				line = "<C-_>",
				block = "gb",
			},
			opleader = {
				line = "gcc"
			}
		},
		lazy = false,
		-- config = function()
			-- require('Comment').setup({
				-- toggler = {
					-- line = '<leader>/',
					-- block = '<leader>g/'
				-- }}
			-- )
		-- end
	}
}
