return {
	{
		"numToStr/Comment.nvim",
		opts = {
			sticky = true,
			toggler = {
				line = "<C-/>",
				block = "gb",
			},
			opleader = {
				line = "gcc"
			}
		},
		lazy = false,
		-- event = "LazyFile"
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
