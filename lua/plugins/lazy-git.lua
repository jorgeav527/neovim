local mapvimkey = require("utils.keymapper").mapvimkey

return {
	"kdheepak/lazygit.nvim",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		mapvimkey("<leader>gg", "LazyGit", "Lazygit"),
	},
}
