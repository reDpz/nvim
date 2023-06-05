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
		'hrsh7th/nvim-cmp'
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
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
			vim.keymap.set('n', '<leader>fr', builtin.search_history, {})
			vim.keymap.set('n', '<leader>of', builtin.oldfiles, {})
		end
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function ()
			require("indent_blankline").setup {
				char = "┆",
				show_current_context = true,
				show_current_context_start = false,
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
