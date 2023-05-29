-- transparent background
vim.cmd([[
colorscheme gruvbox
set cursorline
]])

vim.wo.fillchars='eob: '

local lineBg = "#3c3836"

-- vim highlights
vim.api.nvim_set_hl(0, "LineNr", { fg = "#7c6f64", bg = lineBg })
vim.api.nvim_set_hl(0, "Visual", { bg = "#d79921", fg = "#282828"})
vim.api.nvim_set_hl(0, "Todo", { fg = "#282828", bg = "#fabd2f", italic = true, bold = true })
vim.api.nvim_set_hl(0, 'EndOfLineMarker', { bg = lineBg })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = lineBg })

-- syntax highlight
vim.api.nvim_set_hl(0, "Comment", {fg = '#928374',italic = true} )
vim.api.nvim_set_hl(0, "String", {fg = '#b8bb26', italic = true})

-- diagnoistics
vim.api.nvim_set_hl(0, "DiagnosticWarn", {fg = '#fe8019', bg = lineBg })
vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg = '#83a598', bg = lineBg })
vim.api.nvim_set_hl(0, "DiagnosticsHint", {fg = '#8ec07c', bg = lineBg })
vim.api.nvim_set_hl(0, "DiagnosticError", {fg = '#cc241d', bg = lineBg })
vim.api.nvim_set_hl(0, "DiagnosticFloatingError", {fg = '#cc241d', bg = "none" })

vim.api.nvim_set_hl(0, "SagaLightBulb", { bg = lineBg})


-- make diagnoistics errors have squiggly underlines
local hl_groups = { 'DiagnosticUnderlineError', "DiagnosticsUnderlineWarn", "DiagnosticUnderlineHint" }
for _, hl in ipairs(hl_groups) do
  vim.cmd.highlight(hl .. ' gui=undercurl')
end
