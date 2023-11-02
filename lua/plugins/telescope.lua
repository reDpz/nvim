return{
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fr', builtin.search_history, {})
        vim.keymap.set('n', '<leader>of', builtin.oldfiles, {})
        require('telescope').setup {
            defaults = {
                theme = "center",
            }
        }
    end

}
