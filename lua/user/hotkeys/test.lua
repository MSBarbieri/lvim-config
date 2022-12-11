local neotest = require('neotest')
local search = function()
  return {
    name = "Test",
    r = { function()
      neotest.run.run({ strategy = "dap" })
    end, "run" },
    c = { "<cmd>Coverage<cr>", "Coverage" },
    h = { "<cmd>CoverageHide<cr>", "Hide Coverage" },
    s = { "<cmd>CoverageSummary<cr>", "summary" },
  }
end

return search
