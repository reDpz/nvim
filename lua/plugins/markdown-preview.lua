return{{
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    config = function()
        vim.g.mkdp_filetypes = { "markdown" }
        vim.g.mkdp_browser = 'firefox'
        vim.g.mkdp_open_to_the_world = 1
        vim.g.mkdp_echo_preview_url = 1

        vim.keymap.set('n', '<leader>mk', '<cmd>MarkdownPreviewToggle<CR>')
    end,
    ft = { "markdown" },
}}
