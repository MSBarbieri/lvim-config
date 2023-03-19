local M = {}
function M.setup(_)
  local plugins = {
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require('hop').setup({
          multi_windows = false,
          case_insensitive = true,
          teasing = true,
          jump_on_sole_occurrence = true,
          keys = "aoeuhtns;,.pgcrl'qjkmwvzd",
        })
      end,
    },
    { "ThePrimeagen/harpoon" },
    {
      "windwp/nvim-spectre",
      config = function() -- Super Search
        require("spectre").setup({
          mapping = {
            ['send_to_qf'] = {
              map = "<leader>e",
              cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
              desc = "send all item to quickfix"
            },
          }
        })
      end
    },
    { 'kevinhwang91/nvim-bqf' }, -- BETTER quickfix
    {
      "kylechui/nvim-surround",  --  the YSSR
      version = "*",             -- Use for stability; omit to use `main` branch for the latest features
      config = function()
        require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
        })
      end
    },
    {
      'gnikdroy/projections.nvim',
      config = function()
        require("projections").setup({
          workspaces = {
            os.getenv('HOME') .. "/dev",
            os.getenv('HOME') .. "/dev/*",
            os.getenv('HOME') .. "/.config",
          },
        })

        require('telescope').load_extension('projections')
        -- Autostore session on VimExit
        local Session = require("projections.session")
        vim.api.nvim_create_autocmd({ 'VimLeavePre' }, {
          callback = function() Session.store(vim.loop.cwd()) end,
        })

        vim.opt.sessionoptions:append("localoptions") -- Save localoptions to session file

        -- Switch to project if vim was started in a project dir
        local switcher = require("projections.switcher")
        vim.api.nvim_create_autocmd({ "VimEnter" }, {
          callback = function()
            if vim.fn.argc() == 0 then switcher.switch(vim.loop.cwd()) end
          end,
        })
      end
    },
  }

  for _, p in pairs(plugins) do
    table.insert(lvim.plugins, p)
  end
end

return M
