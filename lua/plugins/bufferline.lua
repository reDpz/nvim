return {
    'akinsho/bufferline.nvim',
    version = "*",
    -- colourscheme dependency needs to be added otherwise it wont work
    dependencies = { 'ellisonleao/gruvbox.nvim', 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('bufferline').setup {
            options = {
                diagnostics = 'nvim_lsp',
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                separator_style = 'slant',
                themable = true,
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true -- use a "true" to enable the default, or set your own character
                    },
                },
            }
        }
    end,
}
