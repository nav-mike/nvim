return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
        local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.go",
            callback = function()
                require('go.format').goimports()
            end,
            group = format_sync_grp
        })

        require("go").setup({
            lsp_cfg = true,
            run_in_floaterm = true,
        })
        
        local cfg = require('go.lsp').config()

        require('lspconfig').gopls.setup(cfg)
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
