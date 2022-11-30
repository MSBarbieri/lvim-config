-- generic LSP settings
-- Additional Plugins
lvim.plugins = {
  { "shaunsingh/nord.nvim" },
  { "ThePrimeagen/git-worktree.nvim" },
  { "ThePrimeagen/harpoon" },
  { "danilamihailov/beacon.nvim" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "wellle/context.vim" },
  { "RishabhRD/nvim-cheat.sh" },
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
