local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local null_ls = require('null-ls')

local tabwidthfix = { "--tab-width", "4" }

local opts = {
    sources = {
        null_ls.builtins.formatting.clang_format.with({
            args = tabwidthfix,
        }),
        null_ls.builtins.formatting.google_java_format.with({
            args = tabwidthfix,
        }),
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end
}

return opts
