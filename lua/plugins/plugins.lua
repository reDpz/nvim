return{
	"folke/which-key.nvim",
	{
		"morhetz/gruvbox",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	{
		'neovim/nvim-lspconfig'
	},
	{
		'hrsh7th/cmp-nvim-lsp'
	},
	{
		'hrsh7th/cmp-buffer'
	},
	{
		'hrsh7th/cmp-path'
	},
	{
		'hrsh7th/cmp-cmdline'
	},
	{
		'hrsh7th/nvim-cmp',

	},

	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},
	{
		"williamboman/mason.nvim",
		lazy = false,
		build = function()
			pcall(vim.cmd, 'MasonUpdate')
		end,
		config = function ()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				build = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	},

	-- less important stuff
		-- opts = {
		-- }
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			show_current_context = true,
			show_current_context_start = false,

		},
		config = function ()

			local highlight = {
				"Whitespace",
			}

			require("ibl").setup{
				indent = {
					char = "┆",
					highlight = highlight,
				},

				whitespace = {
					highlight = highlight,
					remove_blankline_trail = false,
				},

				scope = { enabled = true, },
			}

		end
	},
	{
		"nmac427/guess-indent.nvim",
		config = function ()
			require('guess-indent').setup {}
		end
	},
	{
		'ThePrimeagen/vim-be-good'
	},

}
