return {{
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    config = function ()
      vim.g.barbar_auto_setup = false -- disable auto-setup

      require'barbar'.setup {
        -- WARN: do not copy everything below into your config!
        --       It is just an example of what configuration options there are.
        --       The defaults are suitable for most people.
        --       (dont worry i did'nt do this jajaja)

        -- Enable/disable animations
        animation = false,

        -- Enable/disable auto-hiding the tab bar when there is a single buffer
        auto_hide = false,

        -- Enable/disable current/total tabpages indicator (top right corner)
        tabpages = false,

        -- Enables/disable clickable tabs
        --  - left-click: go to buffer
        --  - middle-click: delete buffer
        clickable = true,


        -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
        -- Valid options are 'left' (the default), 'previous', and 'right'
        focus_on_close = 'left',

        -- Enable highlighting visible buffers
        highlight_visible = true,

        icons = {
          -- Configure the base icons on the bufferline.
          -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
          button = '',
          -- Enables / disables diagnostic symbols
          filetype = {
            enabled = true,
          },
          separator = {left = '▎', right = ''},

          -- Configure the icons on the bufferline when modified or pinned.
          -- Supports all the base icon options.
          modified = {button = '●'},
          pinned = {button = '', filename = true},

          -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
          preset = 'powerline',

        },

        no_name_title = nil,
      }
    end
  },
}}
