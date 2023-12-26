local config = function()
	require("lualine").setup({
		options = {
			theme = "auto",
			globalstatus = true,
			disabled_filetypes = { "NvimTree" },
			showmode = false,
			section_separators = { left = "|", right = "|" },
			component_separators = { left = "|", right = "|" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "buffers" },
			lualine_c = {},
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = {},
			lualine_z = { "location" },
		},
		tabline = {},
		extensions = { "nvim-tree" },
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
