return {
    lazy = false,
    cmd = "Huez",
    -- event = "VeryLazy",
    "vague2k/huez.nvim",
    config = function()
        require("huez").setup({})

        local colorscheme = require("huez.api").get_colorscheme()
        vim.cmd("colorscheme " .. colorscheme)

        vim.keymap.set("n", "<leader>co", "<cmd>Huez<CR>", {})
    end,
    dependencies = {
        "nvim-telescope/telescope.nvim",
    },
}
