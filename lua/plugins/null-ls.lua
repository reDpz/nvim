return {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function ()
        return require 'plugconfig.null-ls'
    end,
    ft = {'cpp'},
}
