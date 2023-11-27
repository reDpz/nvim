local set_options = function(locality, options)
    for key, value in pairs(options) do
        locality[key] = value
    end
end

local opts = {
    cursorline = true,
}

set_options(vim.o, opts)




-- vim highlights

-- vim.api.nvim_set_hl(0, "Todo", { fg = "#282828", bg = "#fabd2f", italic = true, bold = true })
-- vim.api.nvim_set_hl(0, 'EndOfLineMarker', { bg = lineBg })

-- syntax highlight

-- diagnistics


-- telescope
-- highlight(0, 'LspCodeLens', { fg = '#928374' })







vim.fn.sign_define('DapBreakpoint',
    {
        text = '', -- nerdfonts icon here
        texthl = 'DapBreakpointSymbol',
        linehl = 'DapBreakpoint',
    }
)

vim.fn.sign_define('DapBreakpointCondition',
    {
        text = '', -- nerdfonts icon here
        texthl = 'DapBreakpointSymbol',
        linehl = 'DapBreakpoint',
    }
)

vim.fn.sign_define('DapStopped',
    {
        linehl = 'debugPC',
    })
-- no bg on bufferline
-- highlight(0, 'BufferlineFill', {bg = 'none'})

-- vim.cmd([[set fillchars+=vert:▕]])
--


local highlight = vim.api.nvim_set_hl

-- vim highlights
vim.api.nvim_set_hl(0, "LineNr", { fg = "#7c6f64", bg = 'none' })
highlight(0, 'CursorLineNr', { fg = '#fabd2f', bg = 'none' })

vim.api.nvim_set_hl(0, "Visual", { bg = "#d79921", fg = "#282828"})
vim.api.nvim_set_hl(0, "Todo", { fg = "#282828", bg = "#fabd2f", italic = true, bold = true })
-- vim.api.nvim_set_hl(0, 'EndOfLineMarker', { bg = lineBg })
vim.api.nvim_set_hl(0, 'CursorLineSign', { bg = 'none' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = 'none' })
highlight(0, 'Search', { fg = '#282828', bg = '#fe8019' })

-- syntax highlight

-- diagnistics

vim.api.nvim_set_hl(0, "SagaLightBulb", { bg = 'none'})

-- telescope
highlight(0, 'TelescopeMatching', { fg = '#ebdbb2', bold = true})
highlight(0, 'LspCodeLens', { fg = '#928374' })


-- cmp
-- 
vim.api.nvim_set_hl(0, 'Pmenu', {fg = '#ebdbb2', bg = '#1c1c1c'})
vim.api.nvim_set_hl(0, 'SagaNormal', {bg = '#282828'})
vim.api.nvim_set_hl(0, 'NormalFloat1', {bg = '#282828'})
vim.api.nvim_set_hl(0, 'PmenuSel', {fg = '#282828', bg = '#fabd2f'})
vim.api.nvim_set_hl(0, 'WhichKeyBorder', {bg = '#282828', fg = '#fabd2f'})
vim.api.nvim_set_hl(0, 'WhichKeyFloat', {bg = '#282828', fg = '#fabd2f'})

