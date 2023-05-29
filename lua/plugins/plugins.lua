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
		end
	},
	{
		'abecodes/tabout.nvim',
		lazy = false,
		config = function()
			require('tabout').setup {
				tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
				backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
				act_as_tab = true, -- shift content if tab out is not possible
				act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
				default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
				default_shift_tab = '<C-d>', -- reverse shift default action,
				enable_backwards = true, -- well ...
				completion = true, -- if the tabkey is used in a completion pum
				tabouts = {
					{open = "'", close = "'"},
					{open = '"', close = '"'},
					{open = '`', close = '`'},
					{open = '(', close = ')'},
					{open = '[', close = ']'},
					{open = '{', close = '}'}
				},
				ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
				exclude = {} -- tabout will ignore these filetypes
			}
		end,
		dependencies = {'nvim-treesitter', 'L3MON4D3/LuaSnip'}, -- or require if not used so far
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function ()
			require("indent_blankline").setup {
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
	}

}
