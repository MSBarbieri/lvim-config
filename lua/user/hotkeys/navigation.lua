local harpoon = require("harpoon.ui")

lvim.builtin.which_key.mappings["n"] = {
  name = "navigation",
  n = { '<C-i>', "jump next" },
  p = { '<C-o>', "jump prev" }
}

lvim.builtin.which_key.mappings["h"] = {
  name = "harpoon",
  p = { function()
    harpoon.nav_prev()
  end, "prev" },
  n = { function()
    harpoon.nav_next()
  end, "next" },
  a = { ":lua require('harpoon.mark').add_file()<cr>", "add" },
  t = { function()
    harpoon.toggle_quick_menu()
  end, "ui toggle" },

  ['&'] = { function()
    harpoon.nav_file(1)
  end, "nav to file 1" },
  ['['] = { function()
    harpoon.nav_file(2)
  end, "nav to file 2" },
  ['{'] = { function()
    harpoon.nav_file(3)
  end, "nav to file 3" },
  ['}'] = { function()
    harpoon.nav_file(4)
  end, "nav to file 4" },
  ['('] = { function()
    harpoon.nav_file(5)
  end, "nav to file 5" },
  ['='] = { function()
    harpoon.nav_file(6)
  end, "nav to file 6" },
  ['*'] = { function()
    harpoon.nav_file(7)
  end, "nav to file 7" },
  [')'] = { function()
    harpoon.nav_file(8)
  end, "nav to file 8" },
  ['+'] = { function()
    harpoon.nav_file(9)
  end, "nav to file 9" },
  [']'] = { function()
    harpoon.nav_file(10)
  end, "nav to file 10" },
}
