return {
	'navarasu/onedark.nvim',
	config = function()
		require('onedark').setup({
			style = 'warm',
			ending_tildes = true
		})
		require('onedark').load()
	end
}
