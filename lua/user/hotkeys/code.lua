local snippets = require("user.hotkeys.snippets")
local lsp = require("user.hotkeys.lsp")

local code = function()
  return {
    name = "code",
    s = snippets(),
    p = lsp(),
    r = { vim.lsp.buf.rename, "Rename" },
    e = { vim.diagnostic.setloclist, "Quickfix" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
  }
end
return code
