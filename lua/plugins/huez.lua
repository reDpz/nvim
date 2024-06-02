return {
	lazy = false,
	cmd = "Huez",
	-- event = "VeryLazy",
	"vague2k/huez.nvim",
	config = function()
		require("huez").setup({})

		local pickers = require("huez.pickers")

		vim.keymap.set("n", "<leader>co", pickers.themes, {})
		vim.keymap.set("n", "<leader>cof", pickers.favorites, {})
		vim.keymap.set("n", "<leader>col", pickers.live, {})
		vim.keymap.set("n", "<leader>coe", pickers.ensured, {})
	end,
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
}
