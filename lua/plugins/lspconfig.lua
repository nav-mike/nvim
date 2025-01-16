return {
	{ 'neovim/nvim-lspconfig' },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {
            bind = true,
            handler_opts = {
                border = "rounded"
            }
        },
        config = function(_, opts) require'lsp_signature'.setup(opts) end
    },
	{ 
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		config = function()
			local lsp_zero = require('lsp-zero')
			
			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			require('mason').setup({ opts = { ensure_installed = { "prettier" } } })
			require('mason-lspconfig').setup({
				ensure_installed = { 'gopls', 'golangci_lint_ls', 'graphql' },
				handlers = {
					function(server_name)
						require('lspconfig')[server_name].setup({})
					end
				}
			})

            require('lspconfig').ruff.setup({})

            require('lspconfig').eslint.setup({
                on_attach = function(client, bufnr)
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        command = "EslintFixAll",
                    })
                end,
            })

            local cmp = require('cmp')

            cmp.setup({
                mapping = {
                    ['<TAB>'] = cmp.mapping.confirm({ select = false })
                }
            })
		end
	},
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
	{ 'L3MON4D3/LuaSnip' },
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
}
