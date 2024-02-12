vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h10"

-- padding
-- local padpx = 0
-- vim.g.neovide_padding_top = padpx
-- vim.g.neovide_padding_bottom = padpx
-- vim.g.neovide_padding_right = padpx
-- vim.g.neovide_padding_left = padpx


-- disable animation
vim.g.neovide_cursor_animation_length = 0

-- no floating shadows
vim.g.neovide_floating_shadow = false
vim.g.neovide_scroll_animation_length = 0.1

-- remember previous window size
vim.g.neovide_remember_window_size = true

if vim.g.neovide then
    vim.cmd([[
    nnoremap <C-S-v> "+p
    cd ~
    ]])
end
