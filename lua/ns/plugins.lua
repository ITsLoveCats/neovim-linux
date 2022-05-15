function get_setup(name)
  return string.format('require("setup/%s")', name)
end

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- tree-sitter
  use 'nvim-treesitter/nvim-treesitter'

  -- nvim web devicons
  use 'kyazdani42/nvim-web-devicons'

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 }

   -- A File Explorer
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require('nvim-tree').setup({}) end
  }

  -- Autopair Plugin
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup() end
  }

  -- Collection of configurations for the built-in LSP client
  use {
    'neovim/nvim-lspconfig',
  }

  -- rust rust-tools
  use { 'simrat39/rust-tools.nvim',
    config = function()
        require('rust-tools').setup({})
    end
  }

  -- nvim completion
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'L3MON4D3/LuaSnip'}
  use {'saadparwaiz1/cmp_luasnip'}
  use {
      'hrsh7th/nvim-cmp',
      config = get_setup("nvim-cmp"),
  }
    
  if packer_bootstrap then
    require('packer').sync()
  end
    
end)
