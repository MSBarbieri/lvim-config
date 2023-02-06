local M = {}
function M.setup(_)
  local plugins = {
    {
      'andythigpen/nvim-coverage',
      config = function()
        require("coverage").setup({
          highlights = {
            -- customize highlight groups created by the plugin
            covered = { fg = "#0db9d7" }, -- supports style, fg, bg, sp (see :h highlight-gui)
            uncovered = { fg = "#db4b4b" },
          },
        })
      end
    },
    {
      "nvim-neotest/neotest",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim",
        "haydenmeade/neotest-jest",
        "nvim-neotest/neotest-go",
        "nvim-neotest/neotest-plenary",
        "rouge8/neotest-rust",
        "nvim-neotest/neotest-python"
      },
      config = function()
        local dap = require('dap')
        require("neotest").setup({
          adapters = {
            require("neotest-python")({
              dap = { justmyCode = false },
              runner = "pytest",
              python = "python3"
            }),
            require("neotest-plenary"),
            require("neotest-rust"),
            require("neotest-go")({
              experimental = {
                test_table = true,
              },
              args = { "-count=1", "-timeout=60s" }
            }),
            require('neotest-jest')({
              jestCommand = "npm test --",
              -- jestConfigFile = "custom.jest.config.ts",
              env = { CI = true },
              cwd = function(path)
                return vim.fn.getcwd()
              end,
              strategy_config = dap.configurations.typescript[3]
            }),
          },
        })
      end
    },
  }

  for _, p in pairs(plugins) do
    table.insert(lvim.plugins, p)
  end
end

return M
