-- Surround actions (Add, delete, replace, find, highlight surrounding (like pair of parenthesis, quotes, etc.))
-- https://github.com/echasnovski/mini.surround

return {
	"echasnovski/mini.surround",
	version = false,
	config = function()
		require("mini.surround").setup()
	end,
}
