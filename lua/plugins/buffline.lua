return {
    "akinsho/bufferline.nvim",
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({
            options = {
                mode = "buffers",
                numbers = "both",
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        separator = true,
                        padding = 1,
                    },
                },
            },
        })
    end
}
