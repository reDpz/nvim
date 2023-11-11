return {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({
            ui = {
                border = "single"
            },
            lightbulb = {
                enable = false,
            }
        })
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    }
}
