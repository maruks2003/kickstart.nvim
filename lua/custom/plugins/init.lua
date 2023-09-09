-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--

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

-- Show lsp messages on hover
vim.diagnostic.config({virtual_text = false})
vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

return {
    -- Simple colorscheme no setup required
    "rebelot/kanagawa.nvim",
    config = function ()
        vim.cmd.colorscheme("kanagawa")
    end
}
