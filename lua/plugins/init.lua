-- generic LSP settings
-- Additional Plugins
lvim.plugins = {
  { "shaunsingh/nord.nvim" },
  { "jacoborus/tender.vim" },

  { "norcalli/nvim-colorizer.lua", config = function()
    require 'colorizer'.setup()
  end },
  { "folke/lsp-colors.nvim", config = function()
    require("lsp-colors").setup({
      Error = "#db4b4b",
      Warning = "#e0af68",
      Information = "#0db9d7",
      Hint = "#10B981"
    })
  end },
  { "danilamihailov/beacon.nvim" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "wellle/context.vim" },
  { "RishabhRD/nvim-cheat.sh" },
  { "ThePrimeagen/git-worktree.nvim" },
  { "ThePrimeagen/harpoon" },
  { "beauwilliams/focus.nvim", config =
  function()
    require("focus").setup()
  end
  },
  { 'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" } },
  { 'chrisbra/unicode.vim' },
  { 'nvim-telescope/telescope-symbols.nvim' },
  { 'RishabhRD/popfix' },
  {
    'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end
  }
}
