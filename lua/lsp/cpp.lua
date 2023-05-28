return require('lspconfig').clangd.setup
{
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end,
	cmd = {
		"clangd",
		"--query-driver=/Users/Erop/scoop/apps/mingw-winlibs-llvm/12.2.0-15.0.7-10.0.0-r4/bin/clang.exe"
	},
	filetypes = {"c", "cpp", "objc", "objcpp"},
	capabilities = capabilities
}
