local snippets = require("user.hotkeys.snippets")
local lsp = require("user.hotkeys.lsp")

local diagnostics = function()
  return {
    name = "Diagnostics",
    ["."] = { "<cmd>Telescope diagnostics<cr>", "Diagnostic" },
    n = {
      vim.diagnostic.goto_next,
      "Next Diagnostic",
    },
    p = {
      vim.diagnostic.goto_prev,
      "Prev Diagnostic",
    },
  }
end
return diagnostics
