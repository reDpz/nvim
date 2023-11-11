-- transparent background
vim.cmd([[
colorscheme gruvbox
set cursorline
]])


local lineBg = "#3c3836"
local highlight = vim.api.nvim_set_hl

highlight(0, 'TermCursor', { bg = '#fabd2f', fg = '#282828' })
highlight(0, 'Cursor', { bg = '#fabd2f', fg = '#282828' })
-- vim highlights
vim.api.nvim_set_hl(0, "LineNr", { fg = "#7c6f64", bg = 'none' })
highlight(0, 'CursorLineNr', { fg = '#fabd2f', bg = lineBg })

vim.api.nvim_set_hl(0, "Visual", { bg = "#d79921", fg = "#282828"})
vim.api.nvim_set_hl(0, "Todo", { fg = "#282828", bg = "#fabd2f", italic = true, bold = true })
-- vim.api.nvim_set_hl(0, 'EndOfLineMarker', { bg = lineBg })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
vim.api.nvim_set_hl(0, 'CursorLineSign', { bg = lineBg })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = 'none' })
highlight(0, 'Search', { fg = '#282828', bg = '#fe8019' })

-- syntax highlight
vim.api.nvim_set_hl(0, "Comment", {fg = '#928374',italic = true} )
vim.api.nvim_set_hl(0, "String", {fg = '#b8bb26', italic = true})

-- diagnoistics
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {fg = '#fe8019', bg = 'none' })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {fg = '#83a598', bg = 'none' })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", {fg = '#8ec07c', bg = 'none' })
vim.api.nvim_set_hl(0,"DiagnosticSignError", {fg = '#cc241d', bg = 'none' })

vim.api.nvim_set_hl(0, "SagaLightBulb", { bg = lineBg})

-- telescope
highlight(0, 'TelescopeMatching', { fg = '#ebdbb2', bold = true})
highlight(0, 'LspCodeLens', { fg = '#928374' })


-- cmp
vim.api.nvim_set_hl(0, 'Pmenu', {fg = '#ebdbb2', bg = '#1c1c1c'})
vim.api.nvim_set_hl(0, 'SagaNormal', {bg = '#282828'})
vim.api.nvim_set_hl(0, 'PmenuSel', {fg = '#282828', bg = '#fabd2f'})
vim.api.nvim_set_hl(0, 'WhichKeyBorder', {bg = '#282828', fg = '#fabd2f'})
vim.api.nvim_set_hl(0, 'WhichKeyFloat', {bg = '#282828', fg = '#fabd2f'})


-- make diagnoistics errors have squiggly underlines
local hl_groups = { 'DiagnosticUnderlineError', "DiagnosticUnderlineWarn", "DiagnosticUnderlineInfo" }
for _, hl in ipairs(hl_groups) do
  vim.cmd.highlight(hl .. ' gui=undercurl')
end

-- no bg on bufferline
-- highlight(0, 'BufferlineFill', {bg = 'none'})

-- nvim tree
vim.api.nvim_set_hl(0, 'NvimTreeNormal', {bg = '#1c1c1c'})
-- vim.cmd([[set fillchars+=vert:▕]])
