return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "graphql", "lua", "vim", "vimdoc", "typescript", "html", "javascript", "go", "sql", "tsx", "python", "toml", "rst" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
