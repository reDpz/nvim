return {
    -- lazy = true,
    ft = {"markdown"},
    'img-paste-devs/img-paste.vim',
    config = function ()
        vim.cmd([[
        autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
        " there are some defaults for image directory and image name, you can change them
        " let g:mdip_imgdir = 'img'
        " let g:mdip_imgname = 'image']])
    end
}
