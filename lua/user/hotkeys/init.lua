require("user.hotkeys.lvim")
require("user.hotkeys.git")
require("user.hotkeys.navigation")
local search = require("user.hotkeys.search")
local lsp = require("user.hotkeys.lsp")
local code = require("user.hotkeys.code")
local snippets = require("user.hotkeys.snippets")
local diagnostics = require("user.hotkeys.diagnostics")
local utils = require("utils")

lvim.builtin.which_key.mappings["f"] = search()
lvim.builtin.which_key.mappings["l"] = lsp()
lvim.builtin.which_key.mappings["c"] = code()
lvim.builtin.which_key.mappings["."] = diagnostics()
lvim.builtin.which_key.mappings["s"] = snippets()
