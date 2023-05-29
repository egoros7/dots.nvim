-- Packer --
require('plugins')

-- Theme --
vim.o.background = 'dark'
vim.cmd([[colorscheme github_dark_high_contrast]])

-- Hotkeys and General Settings --
require('config.settings')
require('config.hotkeys')

-- LSP --
require('lsp.lua')
require('lsp.cpp')
require('lsp.rust')
require('lsp.completion') -- Snippets and completion

-- Launch startup.nvim --
require("startup").setup()
