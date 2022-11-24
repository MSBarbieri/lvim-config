local utils = require("utils")

local function framework(snippets)
  snippets.w = {
    name = "framework",
    u = { function()
      utils.snippets.execute_lang_snippet('nil')
    end, "nil" },
  }
end

return framework
