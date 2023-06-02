local code = function()
  return {
    name = "code",
    r = { vim.lsp.buf.rename, "Rename" },
    e = { vim.diagnostic.setloclist, "Quickfix" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    h = { function()
      local lang = vim.bo.filetype
      vim.api.nvim_command(':CheatWithoutComments ' .. lang)
    end, "cheat.sh" },
    [","] = { vim.lsp.buf.format, "Format" },
    p = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
    n = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next Diagnostic" },
    c = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    -- show line diagnostics
    ["."] = { function()
      local config = vim.diagnostic.config()
      config.scope = "line"
      vim.diagnostic.open_float(config)
    end, "Line Diagnostics" },
    -- c = { "<CMD>Copilot panel<CR>", "copilot" },
  }
end
return code
