local rust_tools_status_ok, rustools = pcall(require, 'rust-tools')
if not rust_tools_status_ok then
  return
end

local lsp_opts = require('lsp')

rustools.setup({
  server = lsp_opts
})
