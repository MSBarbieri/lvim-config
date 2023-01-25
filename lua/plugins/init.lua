-- generic LSP settings
-- Additional Plugins
local M = {}

function M.setup(_)
  lvim.plugins = {
    { "RishabhRD/nvim-cheat.sh" },
    { 'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" } },
    {
      'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end
    },
    {
      'pwntester/octo.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'kyazdani42/nvim-web-devicons',
      },
      config = function()
        require "octo".setup()
      end
    },
    { 'leoluz/nvim-dap-go', config = function()
      require('dap-go').setup()
    end },
    { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } },
    {
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npm run compile"
    },
    { 'vala-lang/vala.vim' },
  }
  require('plugins.test').setup(_)
  require('plugins.task').setup(_)
  require('plugins.layout').setup(_)
  require('plugins.nav').setup(_)
end

return M
