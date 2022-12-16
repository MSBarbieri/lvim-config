require("user.hotkeys.lvim")
require("user.hotkeys.git")
require("user.hotkeys.navigation")
require("user.hotkeys.obsidian")
local search = require("user.hotkeys.search")
local lsp = require("user.hotkeys.lsp")
local code = require("user.hotkeys.code")
local snippets = require("user.hotkeys.snippets")
local diagnostics = require("user.hotkeys.diagnostics")
local test = require("user.hotkeys.test")
local fold = require("user.hotkeys.fold")

lvim.builtin.which_key.mappings["f"] = search()
lvim.builtin.which_key.mappings["l"] = lsp()
lvim.builtin.which_key.mappings["c"] = code()
lvim.builtin.which_key.mappings["."] = diagnostics()
lvim.builtin.which_key.mappings["s"] = snippets()
lvim.builtin.which_key.mappings["t"] = test()
lvim.builtin.which_key.mappings["m"] = fold()
