local navic = require('nvim-navic')

require("neodev").setup(
{
	-- add any options here, or leave empty to use the default settings
})

require('lspconfig').lua_ls.setup
{
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end
}
