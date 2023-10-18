return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/.neorg/notes",
              },
              default_workspace = "notes",
            },
          },
        },
    }

    vim.wo.foldlevel = 99;
    vim.wo.conceallevel = 2;
    end,
}
