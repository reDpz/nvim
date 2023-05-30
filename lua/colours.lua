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
vim.api.nvim_set_hl(0, "LineNr", { fg = "#7c6f64", bg = lineBg })
vim.api.nvim_set_hl(0, "Visual", { bg = "#d79921", fg = "#282828"})
vim.api.nvim_set_hl(0, "Todo", { fg = "#282828", bg = "#fabd2f", italic = true, bold = true })
vim.api.nvim_set_hl(0, 'EndOfLineMarker', { bg = lineBg })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = lineBg })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = 'none' })

-- syntax highlight
vim.api.nvim_set_hl(0, "Comment", {fg = '#928374',italic = true} )
vim.api.nvim_set_hl(0, "String", {fg = '#b8bb26', italic = true})

-- diagnoistics
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {fg = '#fe8019', bg = lineBg })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {fg = '#83a598', bg = lineBg })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", {fg = '#8ec07c', bg = lineBg })
vim.api.nvim_set_hl(0, "DiagnosticSignError", {fg = '#cc241d', bg = lineBg })

vim.api.nvim_set_hl(0, "SagaLightBulb", { bg = lineBg})

-- telescope
highlight(0, 'TelescopeMatching', { fg = '#ebdbb2', bold = true})
highlight(0, 'LspCodeLens', { fg = '#928374' })

-- cmp


-- make diagnoistics errors have squiggly underlines
local hl_groups = { 'DiagnosticUnderlineError', "DiagnosticUnderlineWarn", "DiagnosticUnderlineInfo" }
for _, hl in ipairs(hl_groups) do
  vim.cmd.highlight(hl .. ' gui=undercurl')
end
