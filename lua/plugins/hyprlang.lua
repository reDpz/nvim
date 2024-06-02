return {
	"luckasRanarison/tree-sitter-hyprlang",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		vim.filetype.add({
			pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
		})
	end,
}
