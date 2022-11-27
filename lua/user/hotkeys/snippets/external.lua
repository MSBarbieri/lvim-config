local function external(command)
  local misc = {
    name = "misc",
    m = { function()
      Snippets.execute_snippet('mitl')
    end, "MIT License" },
    c = { function()
      Snippets.execute_snippet('c)')
    end, "copyright" },
    d = { function()
      Snippets.execute_snippet('dateMDY')
    end, "date" },
    t = { function()
      Snippets.execute_snippet('timeHMS')
    end, "time" },
    z = { function()
      Snippets.execute_snippet('diso')
    end, "ISO DT stmap" },
    i = { function()
      Snippets.execute_snippet('datetime')
    end, "date time" },
  }

  command.m = misc
end

return external
