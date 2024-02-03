return{
    {
        'windwp/nvim-ts-autotag',
        lazy = true,
        config = function ()
            require('nvim-ts-autotag').setup()
        end
    },
    {
        "ziontee113/color-picker.nvim",
        lazy = true,
        config = function()
            require("color-picker")
        end,
    },
}
