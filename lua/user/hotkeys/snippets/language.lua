local utils = require("utils")

local function language(snippets)
  snippets.i = {
    name = "if",
    t = { function()
      utils.snippets.execute_lang_snippet('if')
    end, "tiny" },
    l = { function()
      utils.snippets.execute_lang_snippet('if_let')
    end, "if-let" },
    e = { function()
      utils.snippets.execute_lang_snippet('elif')
    end, "elif" },
    m = { function()
      utils.snippets.execute_lang_snippet('match')
    end, "match" },
  }


  snippets.n = {
    function()
      utils.snippets.execute_lang_snippet('fn')
    end, "function"
  }

  snippets.u = {
    name = "utils",
    p = { function()
      utils.snippets.execute_lang_snippet('print')
    end, "print" },
    w = { function()
      utils.snippets.execute_lang_snippet('warn')
    end, "warning" },
    t = { function()
      utils.snippets.execute_lang_snippet('test')
    end, "test" },
    v = { function()
      utils.snippets.execute_lang_snippet('test')
    end, "vec" },
  }
  -- fi = { function()
  --   utils.snippets.execute_lang_snippet('inline')
  -- end, "inline" },

  snippets.a = { function()
    utils.snippets.execute_lang_snippet('assign')
  end, "assign" }

  snippets.f = {
    name = "loops",
    f = { function()
      utils.snippets.execute_lang_snippet('for')
    end, "for" },
    e = { function()
      utils.snippets.execute_lang_snippet('foreach')
    end, "foreach" },
    w = { function()
      utils.snippets.execute_lang_snippet('while')
    end, "while" },
  }
end

return language
