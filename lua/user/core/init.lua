local M = {}
function M.setup(opts)
  require("user.core.alpha").setup(opts)
  require("user.core.dap").setup()
  -- require("user.core.vala").setup()
end

return M
