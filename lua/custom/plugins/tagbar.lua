return {
    "preservim/tagbar",
    config=function ()
        vim.keymap.set('n', '<F3>', ':TagbarToggle<CR>', {silent=true})
        vim.keymap.set('n', '<leader>t', ':TagbarToggle<CR>', {silent=true})
    end
}
