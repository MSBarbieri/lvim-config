local external = require('user.hotkeys.snippets.external')
local language = require('user.hotkeys.snippets.language')
local framework = require('user.hotkeys.snippets.framework')


local function load_snippets()

  local command = {
    name = "snippets",
  }
  external(command)
  language(command)
  framework(command)

  return command
end

return load_snippets
