local function execute_command(cmd)
  vim.cmd("Cheat " .. vim.bo.filetype .. " " .. cmd)
end

local function python_command(cmd)
  vim.cmd("Cheat python " .. cmd)
end

local function external(command)
  local algorithms = {
    name = "algorithms",
    s = {
      name = "search",
      b = { function() execute_command("search") end, "basic" },
      a = { function() execute_command("binary search") end, "binary" },
      f = { function() execute_command("fuzzy matching") end, "fuzzy" },
    },

    o = {
      name = "sort",
      b = { function() execute_command("bubble sort") end, "bubble" },
      m = { function() execute_command("merge sort") end, "merge" },
      r = { function() execute_command("merge sort") end, "radix" },
    },

    b = {
      name = "btree",
      b = { function() execute_command("btree dfs") end, "dfs" },
      m = { function() execute_command("btree bfs") end, "bfs" },
    },

    l = {
      name = "linked list",
      r = { function() execute_command("reverse linked list") end, "reverse" },
      s = { function() execute_command("sort linked list") end, "sort" },
    },


    c = {
      name = "compression",
      l = { function() python_command("lzw compression") end, "lzw" },
    },

    e = {
      name = "crypt",
      a = { function() execute_command("aes encrypt") end, "aes" },
      r = { function() execute_command("RSA") end, "RSA" },
    },

    i = {
      name = "input output",
      r = { function() execute_command("read file") end, "read file" },
      w = { function() execute_command("write file") end, "write file" },
      g = { function() execute_command("read args") end, "read args" },
    },


    g = { function() execute_command("length") end, "get length" },

  }

  command.a = algorithms
end

return external
