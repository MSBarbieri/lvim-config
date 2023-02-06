-- generic LSP settings
-- Additional Plugins
local M = {}

function M.setup(_)
  lvim.plugins = {
    { "RishabhRD/nvim-cheat.sh" },
    { 'scalameta/nvim-metals', dependencies = { "nvim-lua/plenary.nvim" } },
    {
      'glacambre/firenvim', build = function() vim.fn['firenvim#install'](0) end
    },
    {
      'pwntester/octo.nvim',
      dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
      },
      config = function()
        require "octo".setup()
      end
    },
    { 'leoluz/nvim-dap-go', config = function()
      require('dap-go').setup()
    end },
    { "mxsdev/nvim-dap-vscode-js", dependencies = { "mfussenegger/nvim-dap" } },
    {
      "microsoft/vscode-js-debug",
      lazy = true,
      build = "npm install --legacy-peer-deps && npm run compile"
    },
    { 'vala-lang/vala.vim' },
  }
  require('plugins.test').setup(_)
  require('plugins.task').setup(_)
  require('plugins.layout').setup(_)
  require('plugins.nav').setup(_)
end

return M
