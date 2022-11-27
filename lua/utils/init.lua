local M = {}

M.scandir = function(directory, extension)
  local i, t, popen = 0, {}, io.popen
  local pfile = popen('exa -a "' .. directory .. '"' .. '| grep "' .. extension .. '"')
  for filename in pfile:lines() do
    i = i + 1
    t[i] = filename
  end
  pfile:close()
  return t
end

M.merge_table = function(t1, t2)
  for k, v in pairs(t2) do
    if type(v) == "table" then
      if type(t1[k] or false) == "table" then
        M.merge_table(t1[k] or {}, t2[k] or {})
      else
        t1[k] = v
      end
    else
      t1[k] = v
    end
  end
  return t1
end

return M
