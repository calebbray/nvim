local fn = vim.fn

-- Automatically install packer
-- local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
-- if fn.empty(fn.glob(install_path)) > 0 then
--   PACKER_BOOTSTRAP = fn.system {
--     "git",
--     "clone",
--     "--depth",
--     "1",
--     "https://github.com/wbthomason/packer.nvim",
--     install_path,
--   }
--   print "Installing packer close and reopen Neovim..."
-- end

vim.cmd [[packadd packer.nvim]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print "packer not available..."
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim"
  use "nvim-lua/plenary.nvim"
  use "windwp/nvim-autopairs"
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "kyazdani42/nvim-web-devicons"
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  use "akinsho/toggleterm.nvim"
  use "nvim-lualine/lualine.nvim"

  -- Colorschemes
  use "folke/tokyonight.nvim"
  use "lunarvim/darkplus.nvim"
  use "navarasu/onedark.nvim"
  use "rose-pine/neovim"
  -- cmp plugins
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  use "RRethy/vim-illuminate"

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"
  use "nvim-treesitter/playground"
  use "theprimeagen/harpoon"
  -- Git
  use "lewis6991/gitsigns.nvim"
  use "mbbill/undotree"
  use "ThePrimeagen/vim-be-good"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  -- if PACKER_BOOTSTRAP then
  -- require("packer").sync()
  -- end
end)
