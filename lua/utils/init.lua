local snippets = require('utils.snippets')
local function print_r(table)
  print(vim.inspect(table))
end

return {
  print_r = print_r,
  snippets = snippets
}
