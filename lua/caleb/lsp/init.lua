local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "caleb.lsp.mason"
require("caleb.lsp.handlers").setup()
require "caleb.lsp.null-ls"
