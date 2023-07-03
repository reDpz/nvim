vim.o.guifont = "CaskaydiaCove NFM:h13"

-- padding
-- local padpx = 0
-- vim.g.neovide_padding_top = padpx
-- vim.g.neovide_padding_bottom = padpx
-- vim.g.neovide_padding_right = padpx
-- vim.g.neovide_padding_left = padpx


-- disable animation
vim.g.neovide_cursor_animation_length = 0

-- remember previous window size
vim.g.neovide_remember_window_size = true

if vim.g.neovide then
    vim.cmd([[
    map! <C-S-v> <C-R>+
    cd ~
    NvimTreeOpen
    ]])
end
