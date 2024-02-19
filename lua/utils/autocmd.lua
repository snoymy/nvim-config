function _autocmd(_event, _pat, _cmd)
    vim.api.nvim_create_autocmd(_event, {
        pattern = _pat,
        command = _cmd,
    })
end

autocmd = _autocmd
au = _autocmd
