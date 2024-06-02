return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets", "saadparwaiz1/cmp_luasnip" },
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	{
		"hrsh7th/cmp-vsnip",
		dependencies = { "hrsh7th/vim-vsnip", "hrsh7th/vim-vsnip-integ" },
	},
	-- { 'SirVer/ultisnips', dependencies = { 'quangnguyen30192/cmp-nvim-ultisnips' }}
}
