local neotest = require('neotest')
local search = function()
  return {
    name = "Test",
    r = { function()
      neotest.run.run()
    end, "run" },
    s = { function()
      neotest.summary.toggle()
    end, "summary" },
  }
end

return search
