return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'neovim/nvim-lspconfig'
	use 'xiyaowong/transparent.nvim'
	use 'andweeb/presence.nvim'

	require("presence").setup({
		auto_update         = true,                      
		neovim_image_text   = "The One True Text Editor :3", 
		main_image          = "neovim",
		log_level           = nil,
		debounce_timeout    = 10,
		enable_line_number  = false,
		blacklist           = {},
		buttons             = true,
		file_assets         = {},
		show_time           = true,

		-- Rich Presence text options
		editing_text        = "Bwoating %s :3",
		file_explorer_text  = "Bwowsing fow :3 fuwwy pown in %s",
		git_commit_text     = "Committing fuwwy porn",
		plugin_manager_text = "Managing fuwwy pown :3",
		reading_text        = "Weading %s :3",
		workspace_text      = "Wowking on %s :3",
	})
end)
