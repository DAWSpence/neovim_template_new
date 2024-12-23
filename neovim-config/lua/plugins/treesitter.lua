require'nvim-treesitter.configs'.setup {

  -- Needed parsers
  ensure_installed = {
    "lua",
    'vimdoc',
    'vim',
    'markdown',
    'make'
  },

  -- Install all parsers synchronously
  sync_install = false,

  -- Подсветка
  highlight = {
    -- Enabling highlight for all files
    enable = true,
    disable = {},
  },

  indent = {
    -- Disabling indentation for all files
    enable = false,
    disable = {},
  }
}
