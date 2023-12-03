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


