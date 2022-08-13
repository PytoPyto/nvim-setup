local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
})
  use { "williamboman/mason.nvim" }
  use "williamboman/mason-lspconfig.nvim"
  use "dinhhuy258/git.nvim"
  use 'lewis6991/gitsigns.nvim'
  use "jose-elias-alvarez/null-ls.nvim"
  use "MunifTanjim/prettier.nvim"
  use 'folke/tokyonight.nvim'
  use "kyazdani42/nvim-web-devicons"
  use 'nvim-lualine/lualine.nvim' 
  use 'neovim/nvim-lspconfig' 
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim' 
  use 'hrsh7th/cmp-buffer' 
  use 'hrsh7th/cmp-nvim-lsp' 
  use 'hrsh7th/nvim-cmp'
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-autopairs'
  use "windwp/nvim-ts-autotag"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "akinsho/nvim-bufferline.lua"
  use "norcalli/nvim-colorizer.lua"
end)
