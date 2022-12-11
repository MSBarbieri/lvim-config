local M = {}
function M.setup()
  require("user.core.alpha").setup()
  require("user.core.dap").setup()
end

return M
