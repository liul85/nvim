-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
	-- neovide config here
	vim.g.neovide_cursor_animation_length = 0
end
