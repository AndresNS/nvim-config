-- Toggle Comment
-- https://github.com/echasnovski/mini.comment

return {
	{
		"echasnovski/mini.comment",
		version = false,
		config = function()
			require("mini.comment").setup({
				options = {
					custom_commentstring = function()
						return require("ts_context_commentstring").calculate_commentstring() or vim.bo.commentstring
					end,
				},
			})
		end,
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
}
