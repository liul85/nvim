local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- fzf
keymap('n', '<C-f>', ":lua require('fzf-lua').files()<CR>", opts)
keymap('n', '<C-j>', ":FzfLua buffers<CR>", opts)

-- nvim tree
keymap("n", "<C-e>", ":NvimTreeToggle<CR>", opts)

-- telescope
keymap('n', '<C-s>', ":lua require('telescope.builtin').live_grep()<CR>", opts)

-- trouble plugin
keymap("n", "<leader>t", "<cmd>TroubleToggle<cr>", opts)
