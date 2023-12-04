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
vim.g.editorconfig = true

-- Show lsp messages on hover
vim.diagnostic.config({ virtual_text = false })
vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]


-- Fluff
vim.api.nvim_create_user_command("Shrug",function()
    print("¯\\_(ツ)_/¯")
end,{})

return {
    -- Simple colorscheme no setup required
    "rebelot/kanagawa.nvim",
    config = function()
        vim.cmd.colorscheme("kanagawa")
    end
}
