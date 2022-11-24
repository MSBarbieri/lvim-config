local utils = require("utils")
local external = require('user.hotkeys.snippets.external')
local language = require('user.hotkeys.snippets.language')
local framework = require('user.hotkeys.snippets.framework')


local function load_snippets()

  local snippets = {
    name = "sippets",
  }
  external(snippets)
  language(snippets)
  framework(snippets)

  return snippets
end

return load_snippets
