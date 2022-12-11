local M = {}

function M.setup(opts)
  -- require "user.dap"
  require "user.theme"
  require "user.hotkeys"
  require "user.default_lvim"
  require "user.default_nvim"
  require "user.harpoon"
  require "user.worktree"
  require('user.core').setup()
end

return M
