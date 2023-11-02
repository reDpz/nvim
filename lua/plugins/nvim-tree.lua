return {
	'nvim-tree/nvim-tree.lua',
	config = function()
		require('nvim-tree').setup()
		local api = require('nvim-tree.api')
		local function on_attach(bufnr)
			api.config.mappings.default_on_attach(bufnr)
			vim.keymap.del('n', '<C-l>', {buffer = bufnr})
		end
	end
}
