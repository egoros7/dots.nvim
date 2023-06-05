-- Packer --
require('plugins')

-- Theme --
require('config.theme.gruvbox')
vim.o.background = 'dark'

-- Hotkeys and General Settings --
require('config.settings')
require('config.hotkeys')

-- LSP --
require('lsp.lua')
require('lsp.cpp')
require('lsp.rust')
require('lsp.completion') -- Snippets and completion

require('config.snippets')
