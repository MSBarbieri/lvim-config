local M = {}

function M.setup(_)
  lvim.plugins = {
    { "RishabhRD/nvim-cheat.sh" },
    { 'scalameta/nvim-metals',  dependencies = { "nvim-lua/plenary.nvim" } },
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
    {
      'leoluz/nvim-dap-go',
      config = function()
        require('dap-go').setup()
      end
    },
    {
      "zbirenbaum/copilot.lua",
      event = { "VimEnter" },
      config = function()
        vim.defer_fn(function()
          require("copilot").setup {
            plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
            suggestion = {
              enable = true,
              auto_trigger = true,
              keymap = {
                next = "<C-h>",
                prev = "<C-l>",
                accept = "<C-c>"
              },
            }
          }
        end, 100)
      end,
    },
    {
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua", "nvim-cmp" },
      config = function()
        require("copilot_cmp").setup()
      end
    },
    { "tpope/vim-fugitive" },
    { "wakatime/vim-wakatime" }
  }
  require('plugins.test').setup(_)
  require('plugins.layout').setup(_)
  require('plugins.nav').setup(_)
end

return M
