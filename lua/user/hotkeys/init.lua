require("user.hotkeys.lvim")
require("user.hotkeys.git")
require("user.hotkeys.navigation")
local search = require("user.hotkeys.search")
local lsp = require("user.hotkeys.lsp")
local code = require("user.hotkeys.code")
local snippets = require("user.hotkeys.snippets")

lvim.builtin.which_key.mappings["f"] = search()
lvim.builtin.which_key.mappings["l"] = lsp()
lvim.builtin.which_key.mappings["s"] = snippets()
lvim.builtin.which_key.mappings["c"] = code()
