local harpoon = require("harpoon.ui")

lvim.builtin.which_key.mappings["n"] = {
  name = "navigation",
  i = { '<C-i>', "jump next" },
  o = { '<C-o>', "jump prev" }
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

  ['+'] = { function()
    harpoon.nav_file(1)
  end, "nav to file 1" },
  ['['] = { function()
    harpoon.nav_file(2)
  end, "nav to file 2" },
  ['{'] = { function()
    harpoon.nav_file(3)
  end, "nav to file 3" },
  ['('] = { function()
    harpoon.nav_file(4)
  end, "nav to file 4" },
  ['#'] = { function()
    harpoon.nav_file(5)
  end, "nav to file 5" },
  ['='] = { function()
    harpoon.nav_file(6)
  end, "nav to file 6" },
  [')'] = { function()
    harpoon.nav_file(7)
  end, "nav to file 7" },
  ['}'] = { function()
    harpoon.nav_file(8)
  end, "nav to file 8" },
  [']'] = { function()
    harpoon.nav_file(9)
  end, "nav to file 9" },
  ['*'] = { function()
    harpoon.nav_file(10)
  end, "nav to file 10" },
}

local function hop_keys(mode)

  lvim.keys[mode]['s'] = function()
    require("hop").hint_char2({
      direction = require 'hop.hint'.HintDirection.AFTER_CURSOR,
      case_inssensitive = true,
    })
  end

  lvim.keys[mode]['f'] = function()
    require("hop").hint_char2({
      direction = require 'hop.hint'.HintDirection.AFTER_CURSOR,
      current_line_only = true,
      case_inssensitive = true,
      hint_offset = 1
    })
  end

  lvim.keys[mode]['t'] = function()
    require("hop").hint_char1({
      direction = require 'hop.hint'.HintDirection.AFTER_CURSOR,
      current_line_only = true,
      case_inssensitive = true,
      hint_offset = -1
    })
  end

  lvim.keys[mode]['S'] = function()
    require("hop").hint_char2({
      direction = require 'hop.hint'.HintDirection.BEFORE_CURSOR,
      case_inssensitive = true,
    })
  end

  lvim.keys[mode]['F'] = function()
    require("hop").hint_char1({
      direction = require 'hop.hint'.HintDirection.BEFORE_CURSOR,
      current_line_only = true,
      case_inssensitive = true,
      hint_offset = 1
    })
  end

  lvim.keys[mode]['T'] = function()
    require("hop").hint_char1({
      direction = require 'hop.hint'.HintDirection.BEFORE_CURSOR,
      case_inssensitive = true,
      current_line_only = true,
      hint_offset = -1
    })
  end
end

hop_keys('normal_mode')
hop_keys('visual_mode')
