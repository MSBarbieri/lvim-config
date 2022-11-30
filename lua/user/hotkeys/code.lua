local snippets = require("user.hotkeys.snippets")
local lsp = require("user.hotkeys.lsp")
local utils = require("utils")

local code = function()
  return {
    name = "code",
    s = snippets(),
    p = lsp(),
    r = { vim.lsp.buf.rename, "Rename" },
    e = { vim.diagnostic.setloclist, "Quickfix" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    h = { function()
      local lang = vim.bo.filetype
      vim.api.nvim_command(':CheatWithoutComments ' .. lang)
    end, "cheat.sh" },
  }
end
return code
