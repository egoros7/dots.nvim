local navic = require('nvim-navic')

require('lspconfig').lua_ls.setup
{
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end
}
