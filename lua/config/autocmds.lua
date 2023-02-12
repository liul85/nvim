-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*/Cargo.toml",
	group = vim.api.nvim_create_augroup("RustAutoCMDs", { clear = true }),
	callback = function()
		local clients = vim.lsp.get_active_clients()
		local function handler(err)
			if err then
				error(tostring(err))
			end
			vim.notify("Cargo workspace reloaded")
		end

		for _, client in ipairs(clients) do
			if client.name == "rust_analyzer" then
				vim.notify("Reloading Cargo Workspace")
				client.request("rust-analyzer/reloadWorkspace", nil, handler, 0)
			end
		end
	end,
})
