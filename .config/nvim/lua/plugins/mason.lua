vim.pack.add({
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
})

require('mason').setup()
require('mason-lspconfig').setup({
	automatic_enable = true,
})
require('mason-tool-installer').setup({
	ensure_installed = {
		"pyright",
		"flake8",
		"black",
		"clangd",
		"css-lsp",
		"html-lsp",
		"eslint_d",
		"typescript-language-server",
		"stylua",
		"lua-language-server",
	}
})
