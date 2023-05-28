return require('lspconfig').clangd.setup
{
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end,
	cmd = {
		"clangd",
		--"--query-driver=C:/Program Files/LLVM/bin/clang.exe"	
	},
	filetypes = {"c", "cpp", "objc", "objcpp"},
	capabilities = capabilities
}
