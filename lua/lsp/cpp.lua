return require'lspconfig'.clangd.setup
{
	on_attach = on_attach,
	cmd = {
		"clangd",
		"-target x86_64-pc-windows-gnu"
	}
	filetypes = {"c", "cpp", "objc", "objcpp"},
	capabilities = capabilities
}
