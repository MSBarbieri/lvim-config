local Snippets = require("core.snippets")

local function language(command)
  command.i = {
    name = "if",
    t = { function()
      Snippets.execute_lang_snippet('if')
    end, "tiny" },
    l = { function()
      Snippets.execute_lang_snippet('if_let')
    end, "if-let" },
    e = { function()
      Snippets.execute_lang_snippet('elif')
    end, "elif" },
    m = { function()
      Snippets.execute_lang_snippet('match')
    end, "match" },
  }

  command.l = {
    name = "log",
    b = { function()
      Snippets.execute_lang_snippet('print')
    end, "base" },
    d = { function()
      Snippets.execute_lang_snippet('debug')
    end, "Debug" },
    i = { function()
      Snippets.execute_lang_snippet('info')
    end, "Info" },
    w = { function()
      Snippets.execute_lang_snippet('warn')
    end, "Warning" },
  }

  command.t = {
    name = "type",
    a = { function()
      Snippets.execute_lang_snippet('type')
    end, "class/struct" },
    m = { function()
      Snippets.execute_lang_snippet('method')
    end, "method" },
    i = { function()
      Snippets.execute_lang_snippet('interface')
    end, "interface" },
    p = { function()
      Snippets.execute_lang_snippet('prop')
    end, "property" },
    g = { function()
      Snippets.execute_lang_snippet('getter')
    end, "getter" },
    s = { function()
      Snippets.execute_lang_snippet('setter')
    end, "setter" },
  }

  command.n = {
    function()
      Snippets.execute_lang_snippet('fn')
    end, "function"
  }

  command.u = {
    name = "utils",
    w = { function()
      Snippets.execute_lang_snippet('warn')
    end, "warning" },
    t = { function()
      Snippets.execute_lang_snippet('test')
    end, "test" },
    v = { function()
      Snippets.execute_lang_snippet('test')
    end, "vec" },
  }

  command.v = { function()
    Snippets.execute_lang_snippet('assign')
  end, "var" }

  command.f = {
    name = "loops",
    f = { function()
      Snippets.execute_lang_snippet('for')
    end, "for" },
    e = { function()
      Snippets.execute_lang_snippet('foreach')
    end, "foreach" },
    w = { function()
      Snippets.execute_lang_snippet('while')
    end, "while" },
  }
end

return language
