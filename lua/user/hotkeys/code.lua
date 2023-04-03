local lsp = require("user.hotkeys.lsp")

local code = function()
  return {
    name = "code",
    p = lsp(),
    r = { vim.lsp.buf.rename, "Rename" },
    e = { vim.diagnostic.setloclist, "Quickfix" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    h = { function()
      local lang = vim.bo.filetype
      vim.api.nvim_command(':CheatWithoutComments' .. lang)
    end, "cheat.sh" },
    [","] = { vim.lsp.buf.format, "Format" },
    k = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
    j = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next Diagnostic" },
    c = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    -- show line diagnostics
    d = { function()
      local config = lvim.lsp.diagnostics.float
      config.scope = "line"
      vim.diagnostic.open_float(0, config)
    end, "Line Diagnostics" },
    n = { "<CMD>Copilot panel<CR>", "copilot" },
  }
end
return code
