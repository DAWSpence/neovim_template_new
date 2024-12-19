return {

  --Gruvbox  
  { "ellisonleao/gruvbox.nvim",
      priority = 1000,
      config = function()
        require("plugins.gruvbox")
      end
  },

  -- Mason  
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require "plugins.mason"
    end
  },

-- Which key  
{
  "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.which-key")
    end,
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
},



-- Hydra
{
  "anuvyklack/hydra.nvim",
  dependencies={
    'nvim-tree/nvim-tree.lua',
  },
    config = function()
      require("plugins.hydra")
    end,
},


  -- Telescope  
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "ahmedkhalf/project.nvim",
    },
    config = function()
      require "plugins.telescope"
    end
  },

  -- CMP  
  {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require "plugins.cmp"
    end
  },

  -- Git Signs 
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    config = function()
      require "plugins.gitsigns"
    end
  },


  -- TreeSitter  
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require "plugins.treesitter"
    end
  },

  -- Mini.nvim  
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function ()
      require("plugins.mini")
    end
  },


  --Toggleterm
  {'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require ("plugins.toggleterm")
    end
  },

  --lightline
  {'itchyny/lightline.vim',
    config = function ()
      vim.cmd([[
          let g:lightline={'colorscheme': 'one',}
      ]])
    end
  },

  {
   "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("plugins.nvim-tree")
    end,
},


}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
