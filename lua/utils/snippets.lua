local snip_util = require("luasnip.util.util")
local snippet_collection = require("luasnip.session.snippet_collection")
local luasnip = require('luasnip')
local function match_snippet(line, type)
  return snippet_collection.match_snippet(
    line,
    snip_util.get_snippet_filetypes(),
    type
  )
end

local function execute_snippet(snip_code)
  local snippet, expand_params = match_snippet(snip_code, 'snippets')
  if expand_params then
    luasnip.snip_expand(snippet, {
      expand_params = expand_params,
    })
  end
end

local snippets_table = {
  lua = {
    process = {
      fn = "fu",
      inline = "f=",
      import = "lreq",
      assign = "ll",
      const = "const",
    },
    condition = {
      ['if'] = "if",
      if_let = nil,
      match = "switch",
      elif = nil,
      ['return'] = "rt",
      ['for'] = "for",
      foreach = "foreach",
      ['while'] = "while",
    },
    type = {
      type = "cl",
      impl = nil,
      constructor = nil,
      interface = nil,
      method = nil,
      getter = nil,
      setter = nil,
      prop = nil,
    },
    useful = {
      print = "print",
      warn = nil,
      panic = nil,
      test = nil,
      vec = nil,
      ok = nil,
      some = nil,
    },
  },
  rust = {
    process = {
      fn = "fn",
      inline = "inline-fn",
      import = "mod",
      assign = "let",
      const = "const",
    },
    condition = {
      ['if'] = "if",
      if_let = "if-let",
      match = "match",
      elif = "elseif",
      ['return'] = "rt",
      ['for'] = "for",
      foreach = "foreach",
      ['while'] = "while",
    },
    type = {
      type = "struct",
      impl = "impl",
      constructor = nil,
      interface = "trait",
      method = nil,
      getter = nil,
      setter = nil,
      prop = nil,
    },
    useful = {
      print = "println",
      warn = "warn",
      panic = "panic",
      test = "test",
      vec = "vec",
      ok = "Ok",
      some = "Some",
    },
  },
  typescript = {
    process = {
      fn = "function",
      inline = "inline-fn",
      import = "import statement",
      assign = "let",
      const = "const",
    },
    condition = {
      ['if'] = "if",
      if_let = nil,
      match = "switch",
      elif = nil,
      ['return'] = "rt",
      ['for'] = "for",
      foreach = "foreach =>",
      ['while'] = "while",
    },
    type = {
      type = "class",
      impl = nil,
      constructor = "constructor",
      interface = "iface",
      method = "method",
      getter = "get",
      setter = "set",
      prop = nil,
    },
    useful = {
      print = "log",
      warn = "warn",
      panic = "throw",
      test = nil,
      vec = nil,
      ok = nil,
      some = nil,
    },
  }
}

local function get_language_snippets(snippet)
  local lang = vim.bo.filetype
  for value in pairs(snippets_table[lang]) do
    local result = snippets_table[lang][value][snippet]
    if result then
      return result
    end
  end
end

local function execute_lang_snippet(snip_code)
  local snip = get_language_snippets(snip_code)
  if snip then
    execute_snippet(snip)
  end
end

return {
  match_snippet = match_snippet,
  execute_snippet = execute_snippet,
  get_language_snippets = get_language_snippets,
  execute_lang_snippet = execute_lang_snippet
}
