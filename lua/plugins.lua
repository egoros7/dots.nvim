return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- Plugin manager
	use 'ellisonleao/gruvbox.nvim' -- My theme
	use 'projekt0n/github-nvim-theme' -- Another theme
	use 'neovim/nvim-lspconfig' -- LSP
	use 'xiyaowong/transparent.nvim' -- Transparent background for blur
	use 'andweeb/presence.nvim' -- Discord
	use 'aveplen/ruscmd.nvim' -- Thing for russians :3
	use 'sindrets/diffview.nvim' -- Diff
	use 'fedepujol/move.nvim' -- Move lines
	use 'simrat39/symbols-outline.nvim' -- Tree for symbols
	use 'folke/neodev.nvim' -- neodev
	use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
	use 'romgrk/barbar.nvim'
	use
	{
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim"
	}
	use
	{
		"SmiteshP/nvim-navic",
		requires = "neovim/nvim-lspconfig"
	}
	use
	{
		'rmagatti/goto-preview',
		config = function()
			require('goto-preview').setup{}
		end
	}
	use
	{
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		config = function()
			require("barbecue").setup()
		end,
	}
	use
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function() require("indent_blankline").setup
		{
			show_current_context = true,
			show_current_context_start = true,
			show_end_of_line=true
		}
		end
	}
	use
	{
		'norcalli/nvim-colorizer.lua',
		config = function() require('colorizer').setup() end
	}
	use
	{
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use
	{
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use
	{
		'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	use
	{
		'nvim-tree/nvim-tree.lua',
		requires = { {'nvim-tree/nvim-web-devicons'} }
	}
	use
	{
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	}
	use
	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	-- Completion --
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- LuaSnip --
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	--= Setup =--

	-- ruscmd --
	require('ruscmd').setup{}

	-- nvim-tree --
	-- disable netrw at the very start of your init.lua
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

	-- set termguicolors to enable highlight groups
	vim.opt.termguicolors = true

	-- empty setup using defaults
	require("nvim-tree").setup()

	-- Discord Presence Settings --
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

	-- Lualine --
	require('lualine').setup
	{
		options = {
			icons_enabled = true,
			theme = 'nightfly',
			component_separators = { left = '', right = ''},
			section_separators = { left = '', right = ''},
			disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
			}
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_c = {'filename'},
			lualine_x = {'encoding', 'fileformat', 'filetype'},
			lualine_y = {'progress'},
			lualine_z = {'location'}
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {'filename'},
			lualine_x = {'location'},
			lualine_y = {},
			lualine_z = {}
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {}
	}
end)
