local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  print "null_ls missing"
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
-- https://github.com/prettier-solidity/prettier-plugin-solidity

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier,
    formatting.stylua,
    formatting.rustfmt,
    diagnostics.eslint,
    -- diagnostics.eslint_d,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
