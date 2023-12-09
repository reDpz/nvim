return {
  "ellisonleao/gruvbox.nvim",
  config = function()
    -- enable/disable transparency

    local defBG = '#282828'
    local sidebar = 'none'

    -- Default options:
    require("gruvbox").setup({
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "",  -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {
        SignColumn = { bg = sidebar},
        GruvboxGreenSign = { bg = sidebar },
        GruvboxOrangeSign = { bg = sidebar },
        GruvboxPurpleSign = { bg = sidebar },
        GruvboxYellowSign = { bg = sidebar },
        GruvboxRedSign = { bg = sidebar },
        GruvboxBlueSign = { bg = sidebar },
        GruvboxAquaSign = { bg = sidebar },
        Normal = { bg = defBG },
        NormalFloat = {bg = defBG},
        ["@variable"] = { link = "GruvboxBlue" },
        TermCursor = { bg = '#fabd2f', fg = '#282828' },
        Visual = { bg = '#d79921', fg = '#282828' },
        Linenr = { fg = '#7c6f64', bg = sidebar },
        CursorLineNr = { fg = '#fabd2f', bg = sidebar },

        CursorLineSign = { bg = sidebar },
        debugPC = { fg = '', bg = "#3d4220" },
        DapBreakpoint = { fg = '', bg = '#472322' },
        DapBreakpointSymbol = { bg = defBG },
        CmpItemAbbrMatch = { link = "GruvboxYellowBold" },
        ["@type.qualifier"] = { link = "GruvboxAqua" },
        --[[ NoiceLspProgressClient = {link = "NormalFloat"},
        NoiceLspProgressTitle = {link = "NormalFloat"},
        NoiceLspProgressSpinner = {link = "NormalFloat"}, ]]

        -- Lsp Saga
        SagaLightBulb = { bg = defBG },
        SagaNormal = { bg = '#282828' },

        -- telescope
        TelescopeSelection = { link = "Visual" },
        TelescopeMatching = { bold = true },
        TelescopePromptPrefix = { link = 'TelescopeSelection' },

        -- Noice
        NoiceCmdlinePopupBorder = { link = 'NvimNumberPrefix' },
        NoiceCmdlineIcon = { link = 'CmpItemMenu' },
        NoicePopup = { link = 'Normal' },
        NoiceCmdlinePopupTitle = { link = 'String' },

        -- Cmp
        Pmenu = { fg = '#ebdbb2', bg = "#1c1c1c" },
        PmenuSel = { link = 'TermCursor' },

        -- Whichkey
        WhichKeyBorder = { bg = '#282828', fg = '#fabd2f' },
        WhichKeyFloat = { link = 'WhichKeyBorder' },

        -- Nvim tree
        NvimTreeNormal = { bg = '#1c1c1c' },




      },
      dim_inactive = false,
      transparent_mode = false,
    })
    vim.cmd("colorscheme gruvbox")
  end
}
