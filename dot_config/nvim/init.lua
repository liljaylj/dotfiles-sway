-- shortcuts
local cmd = vim.cmd  -- execute VimScript
local g = vim.g      -- g: global variables

-- Disable providers except python3
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0

-- Base config
g.mapleader = ' '

-- Plugins
require'plugins'.init()

-- TODO: create autocmd to automatically source init.lua when any of configuration files is edited (BufWrite?)

-- Old vim config
cmd 'source ~/.config/nvim/old.vim'
