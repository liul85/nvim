-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
	local keys = require("lazy.core.handler").handlers.keys
	---@cast keys LazyKeysHandler
	-- do not create the keymap if a lazy keys handler exists
	if not keys.active[keys.parse({ lhs, mode = mode }).id] then
		opts = opts or {}
		opts.silent = opts.silent ~= false
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

map("n", "<C-f>", "<cmd>:lua require('fzf-lua').files()<cr>", { desc = "fzf" })
map("n", "<C-j>", "<cmd>:FzfLua buffers<cr>", { desc = "buffers" })
map("n", "<C-e>", "<cmd>:NvimTreeToggle<cr>", { desc = "nvim tree" })
map("n", "<C-p>", "<cmd>:lua require'telescope'.extensions.project.project{}<cr>", { desc = "project" })
map("n", "<C-s>", "<cmd>:lua require('telescope.builtin').live_grep()<cr>", { desc = "project" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "move select to next line" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "move select to upper line" })
map("n", "J", "mzJ`z", { desc = "keep the cursor" })
map("n", "<C-d>", "<C-d>zz", { desc = "keep the cursor" })
map("n", "<C-u>", "<C-u>zz", { desc = "keep the cursor" })
map("n", "n", "nzzzv", { desc = "keep the search item in middle" })
map("n", "N", "Nzzzv", { desc = "keep the search item in middle" })
map("x", "<leader>p", '"_dP', { desc = "keep the copied item in buffer" })
map("n", "<leader>d", '"_d', { desc = "clear register" })
map("v", "<leader>d", '"_d', { desc = "clear register" })
map("n", "Q", "<nop>", { desc = "disable Q" })
map("n", "<C-k>", "d$a", { desc = "disable Q" })
map("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "disable Q" })
map("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "disable Q" })
