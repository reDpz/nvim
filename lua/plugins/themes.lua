local load = true
local events = { "VeryLazy" }
local cmd = {}

return {
	{
		"nyoom-engineering/oxocarbon.nvim",
		lasy = load,
		event = events,
	},
	{
		"folke/tokyonight.nvim",
		lazy = load,
		event = events,
		-- cmd = cmd,
		-- priority = 1000,
		opts = {},
		config = function()
			require("tokyonight").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				light_style = "day", -- The theme is used when the background is set to light
				transparent = false, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = true },
					keywords = { italic = true },
					functions = { italic = true },
					variables = {},
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
				sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
				day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
				hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
				dim_inactive = false, -- dims inactive windows
				lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

				--- You can override specific color groups to use other groups or a hex color
				--- function will be called with a ColorScheme table
				---@param colors ColorScheme
				on_colors = function(colors)
					colors.bg = "#1d1d25"
				end,

				--- You can override specific highlights to use other groups or a hex color
				--- function will be called with a Highlights and ColorScheme table

				-- borderless telescope
				on_highlights = function(hl, c)
					hl.TreesitterContext = {
						link = "Normal",
					}

					local prompt = "#2d3149"

					hl.TelescopeNormal = {
						bg = c.bg_dark,
						fg = c.fg_dark,
					}
					hl.TelescopeBorder = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
					hl.TelescopePromptNormal = {
						bg = prompt,
					}
					hl.TelescopePromptBorder = {
						bg = prompt,
						fg = prompt,
					}
					hl.TelescopePromptTitle = {
						bg = prompt,
						fg = prompt,
					}
					hl.TelescopePreviewTitle = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
					hl.TelescopeResultsTitle = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
				end,
			})
		end,
	},
	{
		"xero/miasma.nvim",
		lazy = load,
		event = events,
		-- cmd = cmd,
		-- priority = 1000,
	},
	{
		"zootedb0t/citruszest.nvim",
		lazy = load,
		event = events,
		-- cmd = cmd,
	},
	{
		"srcery-colors/srcery-vim",
		lazy = load,
		event = events,
		-- cmd = cmd,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = load,
		-- cmd = cmd,
		event = events,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = load,
		-- cmd = cmd,
		event = events,
	},
	{
		"navarasu/onedark.nvim",
		lazy = load,
		event = events,
		-- cmd = cmd,
		config = function()
			require("onedark").setup({
				style = "warmer",
			})
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		lazy = load,
		event = events,
		-- cmd = cmd,
	},
	{
		"catppuccin/nvim",
		lazy = load,
		event = events,
		name = "catppuccin",
		opts = {
			transparent_background = false,
			no_italic = false,
			no_bold = false,
			styles = {
				strings = { "italic" },
			},
			integrations = {
				harpoon = true,
				fidget = true,
				cmp = true,
				flash = true,
				gitsigns = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				lsp_trouble = true,
				mason = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				noice = true,
				notify = true,
				neotree = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				which_key = true,
			},
			color_overrides = {
				mocha = {
					base = "#1E1D23",
					mantle = "#22222a",
					crust = "#151519",
				},
			},
			highlight_overrides = {
				mocha = function()
					local mocha = require("catppuccin.palettes").get_palette("mocha")
					return {
						-- Prompt
						TelescopePromptPrefix = { bg = mocha.mantle },
						TelescopePromptNormal = { bg = mocha.mantle },
						TelescopePromptBorder = { bg = mocha.mantle, fg = mocha.mantle },
						TelescopePromptTitle = { fg = mocha.base, bg = mocha.teal },
						-- Results
						TelescopeResultsNormal = { bg = mocha.crust },
						TelescopeResultsBorder = { bg = mocha.crust, fg = mocha.crust },
						TelescopeResultsTitle = { fg = mocha.crust, bg = mocha.crust },
						-- Preview
						TelescopePreviewBorder = { bg = mocha.mantle, fg = mocha.mantle },
						TelescopePreviewNormal = { bg = mocha.mantle },
						TelescopePreviewtitle = { bg = mocha.rosewater, fg = mocha.base },
					}
				end,
			},
		},
	},
	{
		"notken12/base46-colors",
		lazy = load,
		event = events,
		enabled = false,
	},
	{
		"dgox16/oldworld.nvim",
		lazy = load,
		event = events,
		config = function()
			require("oldworld").setup({
				styles = {
					booleans = { italic = true, bold = true },
				},
			})
		end,
	},
}
