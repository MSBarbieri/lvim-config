local search = function()
  return {
    name = "Fold",
    c = {
      require('fold-cycle').close_all, "Close"
    },
    t = {
      require('fold-cycle').toggle_all, "toggle fold"
    },
  }
end

return search
