return require('lspconfig').clangd.setup
{
	on_attach = on_attach,
	cmd = {
		"clangd",
		--"--query-driver=C:/Program Files/LLVM/bin/clang.exe"	
	},
	filetypes = {"c", "cpp", "objc", "objcpp"},
	capabilities = capabilities
}
