local status_ok = pcall(require, "nvim-treesitter")
if not status_ok then
  print("Treesitter not available...")
  return
end

local configs_status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not configs_status_ok then
  print("Treesitter configs not available...")
end

configs.setup {
  ensure_installed = { "lua", "markdown", "bash", "typescript", "javascript", "tsx" }, -- put the language you wnat in this array
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
