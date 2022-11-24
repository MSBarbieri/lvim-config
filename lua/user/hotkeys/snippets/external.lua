local utils = require("utils")

local function external(snippets)

  local misc = {
    name = "misc",
    m = { function()
      utils.snippets.execute_snippet('mitl')
    end, "MIT License" },
    c = { function()
      utils.snippets.execute_snippet('c)')
    end, "copyright" },
    d = { function()
      utils.snippets.execute_snippet('dateMDY')
    end, "date" },
    t = { function()
      utils.snippets.execute_snippet('timeHMS')
    end, "time" },
    z = { function()
      utils.snippets.execute_snippet('diso')
    end, "ISO DT stmap" },
    i = { function()
      utils.snippets.execute_snippet('datetime')
    end, "date time" },
  }

  snippets.m = misc
end

return external
