local Snippets = require("snippets")
local react_hotkeys = {
  name = "react",
  c = { function()
    Snippets.execute_lang_snippet('component')
  end, "class component" },
  n = { function()
    Snippets.execute_lang_snippet('fn_component')
  end, "function component" },
  u = { function()
    Snippets.execute_lang_snippet('use_state')
  end, "use state" },
  e = { function()
    Snippets.execute_lang_snippet('use_effect')
  end, "use effect" },
  m = { function()
    Snippets.execute_lang_snippet('component_did_mount')
  end, "component did mount" },
}

local next_hotkeys = {
  name = "next.js",
  p = { function()
    Snippets.execute_lang_snippet('next_get_initial_props')
  end, "get initial props" },
  s = { function()
    Snippets.execute_lang_snippet('next_gsp')
  end, "get static props" },
  u = { function()
    Snippets.execute_lang_snippet('next_get_static_paths')
  end, "get static paths" },
  i = { function()
    Snippets.execute_lang_snippet('next_image')
  end, "image" },
  l = { function()
    Snippets.execute_lang_snippet('next_link')
  end, "link" },
}

local function framework(command)
  command.w = {
    name = "framework",
    r = react_hotkeys,
    n = next_hotkeys,
  }
end

return framework
