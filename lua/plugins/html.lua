return{
    {
        'windwp/nvim-ts-autotag',
        config = function ()
            require('nvim-ts-autotag').setup()
        end
    },
    {
        "ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    },
}
