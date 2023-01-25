local diagnostics = function()
  return {
    name = "Diagnostics",
    ["."] = { "<cmd>Telescope diagnostics<cr>", "Diagnostic" },
    [","] = { "<cmd>TodoQuickFix<cr>", "Todo Quickfix" },
    p = { vim.diagnostic.goto_prev, "Prev Diagnostic", },
    n = { vim.diagnostic.goto_next, "Next Diagnostic", },
    a = { vim.diagnostic.setloclist, "Quickfix" },
  }
end
return diagnostics
