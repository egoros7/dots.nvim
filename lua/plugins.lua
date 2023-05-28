return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- Plugin manager
	use 'ellisonleao/gruvbox.nvim' -- My theme
	use 'neovim/nvim-lspconfig' -- LSP
	use 'xiyaowong/transparent.nvim' -- Transparent background for blur
	use 'andweeb/presence.nvim' -- Discord
	use 'nvim-telescope/telescope.nvim' -- Cool file search

	require("presence").setup({
		auto_update         = true,                      
		neovim_image_text   = ":3", -- :3
		main_image          = "neovim",
		log_level           = nil,
		debounce_timeout    = 10,
		enable_line_number  = false,
		blacklist           = {},
		buttons             = true,
		file_assets         = {},
		show_time           = true,

		-- Rich Presence text options
		editing_text        = "editing %s",
		file_explorer_text  = "browsing %s",
		git_commit_text     = "doing a commit %s",
		plugin_manager_text = "managing plugins",
		reading_text        = "reading %s",
		workspace_text      = "working in %s",
	})
end)
