local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "ace.lsp.mason"
require("ace.lsp.handlers").setup()
require "ace.lsp.null-ls"
