local snippets = require("user.hotkeys.snippets")
local lsp = require("user.hotkeys.lsp")

local code = function()
  return {
    name = "code",
    s = snippets(),
    p = lsp(),
    r = { vim.lsp.buf.rename, "Rename" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    l = {
      vim.diagnostic.goto_next,
      "Next Diagnostic",
    },
    h = {
      vim.diagnostic.goto_prev,
      "Prev Diagnostic",
    },
    e = { vim.diagnostic.setloclist, "Quickfix" },
    ["."] = { "<cmd>Telescope diagnostics<cr>", "Diagnostic" },
  }
end
return code
