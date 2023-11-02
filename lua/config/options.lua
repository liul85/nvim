-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.guifont = "NotoSansMono Nerd Font:h18"
opt.termguicolors = true
opt.smartindent = true
opt.wrap = false
opt.hlsearch = false
opt.incsearch = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.updatetime = 50
opt.colorcolumn = "120"
opt.timeoutlen = 2000
vim.g.mapleader = " "
