return{{
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
        local Terminal  = require('toggleterm.terminal').Terminal
        local gorun = Terminal:new(
            {
                cmd = "go run " .. vim.fn.expand('%'),
                hidden = true,
                close_on_exit = false,
                on_create = function ()
                    vim.o.cursorline = false
                end,
            }
        )
        function gorun_toggle()
            gorun:toggle()
        end
        require("toggleterm").setup{
            open_mapping = '<C-p>',
            insert_mappings = true,
            terminal_mappings = true,
            highlights = {
                Normal = {
                    guibg = "#FFFFFF",
                    CursorLine = '#282828',
                    CursorLineNr = '#282828',
                    LineNr = '#282828',
                }
            },
            size = 18,

            -- I love cursorline however it doesn't work very well in the terminal
            on_create = function ()
                vim.o.cursorline = false
            end,


        }
    end
}}
