local react_hotkeys = {
  name = "react",
  c = { function()
    Snippets.execute_lang_snippet('component')
  end, "class component" },
  n = { function()
    Snippets.execute_lang_snippet('fn_component')
  end, "function component" },
  u = { "", "use state" },
  e = { "", "use effect" },
}
local express_hotkeys = {
  name = "express",
  c = { function()
    Snippets.execute_lang_snippet('controller')
  end, "Controller" },
  s = { "", "Service" },
  r = { "", "Repository" },
  u = { "", "Result 200" },
  a = { "", "Result 401" },
  ['.'] = { "", "Err 500" },
}

local function framework(command)
  command.w = {
    name = "framework",
    r = react_hotkeys,
    e = express_hotkeys,
  }
end

return framework
