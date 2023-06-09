return {{
    'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
        require('bufferline').setup{
            options = {
                diagnostics = 'nvim_lsp',
                separator_style = 'slant',
                themable = true,
            }
        }
    end
}}
