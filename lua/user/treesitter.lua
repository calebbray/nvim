local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
  print("Treesitter not available...")
  return
end

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  print("Treesitter configs not available...")
end

configs.setup {
  ensure_installed = { "lua", "markdown", "bash", "typescript" }, -- put the language you wnat in this array
  ignore_install = {""},
  sync_install = false,
  highlight = {
    enable = true,
    disable = { "css" }
  },
  autopairs = {
    enable = true
  },
  indent = { enable = true, disable = { "css" },
  context_commentstring = {
    enable = true,
    enable_autocmd = false
  }
}}
