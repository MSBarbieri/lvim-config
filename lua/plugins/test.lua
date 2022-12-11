local M = {}
function M.setup(_)
  local plugins = {
    {
      'andythigpen/nvim-coverage',
      config = function()
        require("coverage").setup({
          commands = true, -- create commands
          highlights = {
            -- customize highlight groups created by the plugin
            covered = { fg = "#C3E88D" }, -- supports style, fg, bg, sp (see :h highlight-gui)
            uncovered = { fg = "#F07178" },
          },
          signs = {
            -- use your own highlight groups or text markers
            covered = { hl = "CoverageCovered", text = "▎" },
            uncovered = { hl = "CoverageUncovered", text = "▎" },
          },
          summary = {
            -- customize the summary pop-up
            min_coverage = 80.0, -- minimum coverage threshold (used for highlighting)
          },
          lang = {
            -- customize language specific settings
          },
        })
      end
    },
    {
      "~/dev/repos/MSBarbieri/neotest/",
      requires = {
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
        require("neotest").setup({
          adapters = {
            require("neotest-python"),
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
