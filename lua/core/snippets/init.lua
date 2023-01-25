local Path = require('plenary.path')
local snippet_collection = require("luasnip.session.snippet_collection")
local snip_util = require("luasnip.util.util")
local luasnip = require("luasnip")
local utils = require("utils")
local Default = require("core.snippets.default")
local M = {
  base_path = os.getenv("HOME") .. '/.config/nvim/assets/snippets'
}

M.load_snippets = function()
  local l_paths = utils.scandir(M.base_path .. '/languages/', '.json')
  local langs = {}
  for _, path in pairs(l_paths) do
    local lang = vim.json.decode(Path:new(M.base_path .. '/languages/' .. path):read())
    local l_name = string.gmatch(path, "%w+")()
    langs[l_name] = lang
  end
  M.snippets.langs = utils.merge_table(M.snippets.langs, langs)

  local frameworks = {}
  local f_paths = utils.scandir(M.base_path .. '/framework/', '.json')
  for _, path in pairs(f_paths) do
    local framework = vim.json.decode(Path:new(M.base_path .. '/framework/' .. path):read())
    local f_name = string.gmatch(path, "%w+")()
    frameworks[f_name] = framework
  end
  M.snippets.frameworks = utils.merge_table(M.snippets.frameworks, frameworks)
end

M.match_snippet = function(line, type)
  return snippet_collection.match_snippet(
    line,
    snip_util.get_snippet_filetypes(),
    type
  )
end

M.execute_snippet = function(snip_code)
  local snippet, expand_params = M.match_snippet(snip_code, 'snippets')
  if expand_params then
    vim.api.nvim_command(':exe "normal" "o"')
    luasnip.snip_expand(snippet, {
      expand_params = expand_params,
    })
  end
end

M.get_snippets = function(snippet)
  local lang = vim.bo.filetype
  if M.snippets.langs[lang] then
    local result = M.snippets.langs[lang][snippet]
    if result then
      if type(result) == "table" then
        return result.prefix
      end
      return result
    else
      for fw, i in pairs(M.snippets.frameworks) do
        result = M.snippets.frameworks[fw][snippet]
        if result then
          return result.prefix
        end
      end
    end
  else
    for fw, i in pairs(M.snippets.frameworks) do
      local result = M.snippets.frameworks[fw][snippet]
      if result then
        return result.prefix
      end
    end
  end
end

M.execute_lang_snippet = function(snip_code)
  local snip = M.get_snippets(snip_code)
  if snip then
    M.execute_snippet(snip)
  end
end

M.setup = function(opts)
  opts = opts or {}
  opts = utils.merge_table(opts, Default)
  M.snippets = opts.snippets
  require("luasnip.loaders.from_vscode").load({ paths = { M.base_path } })
  M.load_snippets()
  return M
end

return M
