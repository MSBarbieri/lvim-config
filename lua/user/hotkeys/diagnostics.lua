local diagnostics = function()
  return {
    name = "Diagnostics",
    t = { "<cmd>Telescope diagnostics<cr>", "Diagnostic" },
    n = { "<cmd>TodoTelescope<cr>", "Todo Quickfix" },
    h = { vim.diagnostic.goto_prev, "Prev Diagnostic", },
    l = { vim.diagnostic.goto_next, "Next Diagnostic", },
    c = { vim.lsp.buf.code_action, "Quickfix" },
  }
end
return diagnostics
