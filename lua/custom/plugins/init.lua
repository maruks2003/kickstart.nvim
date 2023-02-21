-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.termguicolors = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.textwidth = 0
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

if vim.bo.filetype == "make" then
    vim.opt.expandtab = false
else
    vim.opt.expandtab = true
end

vim.opt.colorcolumn = "81"
vim.g.tagbar_left = 1

vim.keymap.set('n', '<F3>', ':TagbarToggle<CR>', {silent=true})
vim.keymap.set('n', '<Esc>', ':NeoTreeRevealToggle<CR>', {silent=true})

return {}
