local external = require('user.hotkeys.snippets.external')
local language = require('user.hotkeys.snippets.language')
local framework = require('user.hotkeys.snippets.framework')
local algorithms = require('user.hotkeys.snippets.algorithms')


local function load_snippets()

  local command = {
    name = "core.snippets",
  }
  external(command)
  language(command)
  framework(command)
  algorithms(command)

  return command
end

return load_snippets
