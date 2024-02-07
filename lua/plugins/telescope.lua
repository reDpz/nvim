return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    lazy = false,
    priority = 999,
    cmd = "Telescope",
    dependencies = {
        'andrew-george/telescope-themes',
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fr', builtin.search_history, {})
        vim.keymap.set('n', '<leader>of', builtin.oldfiles, {})
        vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})


        require("telescope").setup {
            defaults = {
                theme = "center",
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.5,
                    },
                },
            },
        }


        require('telescope').load_extension('themes')
    end,

}
