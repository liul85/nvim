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

map("n", "<C-f>", "<cmd>Telescope find_files<cr>", { desc = "fzf" })
map("n", "<C-j>", "<cmd>Telescope buffers<cr>", { desc = "buffers" })
map("n", "<C-e>", "<cmd>Neotree toggle<cr>", { desc = "neo tree" })
map("n", "<C-p>", "<cmd>:lua require'telescope'.extensions.project.project{}<cr>", { desc = "project" })
map("n", "<C-s>", "<cmd>:lua require('telescope.builtin').live_grep()<cr>", { desc = "project" })