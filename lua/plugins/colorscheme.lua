return {
	-- add gruvbox
	{ "ellisonleao/gruvbox.nvim" },

	{ "RRethy/nvim-base16" },

	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "base16-gruvbox-dark-soft",
		},
	},
}
