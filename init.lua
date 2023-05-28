-- Packer --
require('plugins')

-- Theme --
vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

-- Hotkeys and General Settings --
require('config.settings')
require('config.hotkeys')

-- LSP --
require('lsp.cpp') -- C++ LSP
