vim.cmd [[
    command! -nargs=0 RunQtConsole call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")

    let g:ipy_celldef = '^##'
]]

local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>qt', ':RunQtConsole<CR>', {})
keymap('n', '<leader>ip', ':IPython<Space>--existing<Space>--no-window<CR>', {})
--keymap('n', '<leader>ip', ':IPython<Space>--existing<CR>', {})
keymap('n', '<leader>c', '<Plug>(IPy-RunCell)', {})
keymap('n', '<leader>a', '<Plug>(IPy-RunAll)', {})
