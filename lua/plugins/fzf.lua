return {
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("fzf-lua").setup({
				files = {
					find_opts = [[-type f -not -path '*/\.git/*' -not -path '*/target/*' -printf '%P\n']],
				},
			})
		end,
	},
}
