local opts = {
	ensure_installed = {
		"efm",
		"bashls",
		"tsserver",
		"pyright",
		"lua_ls",
		"emmet_ls",
		"jsonls",
		-- "tailwindcss",
		-- "clangd",
		-- "solidity",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
