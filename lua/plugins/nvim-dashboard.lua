return {
	"MeanderingProgrammer/dashboard.nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		{ "MaximilianLloyd/ascii.nvim", dependencies = { "MunifTanjim/nui.nvim" } },
	},
	config = function()
		require("dashboard").setup({
			-- Dashboard header
			header = require("ascii").art.text.neovim.sharp,
			-- Format to display date in
			date_format = "%Y-%m-%d %H:%M:%S",
			-- List of directory paths
			directories = {
				"~/.config/nvim",
				"~/Dev-Space/Roadr/python-dashboard-restAPI-server",
				"~/Dev-Space/jorgeav527-blog",
			},
			-- Sections to add at bottom, use function names in sections.lua
			-- For example 'version' and 'startuptime'
			footer = {},
			-- Highlight groups to use for various components
			highlight_groups = {
				header = "Constant",
				icon = "Type",
				directory = "Delimiter",
				hotkey = "Statement",
			},
		})
	end,
}
