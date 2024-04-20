-- Auto close brackets
-- https://github.com/echasnovski/mini.comment

return {
	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup()
	end,
}
