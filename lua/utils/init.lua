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


M.get_visual_selection = function()
  local _, csrow, cscol, _ = unpack(vim.fn.getpos("'<"))
  local _, cerow, cecol, _ = unpack(vim.fn.getpos("'>"))
  if csrow < cerow or (csrow == cerow and cscol <= cecol) then
    return csrow - 1, cscol - 1, cerow - 1, cecol
  else
    return cerow - 1, cecol - 1, csrow - 1, cscol
  end
end

return M
