local projects = require('nvim-db').projects
local utils = require('nvim-db.utils')

local function reset()
  lvim.keys.insert_mode["<C-p>"] = false
  lvim.keys.insert_mode["<C-n>"] = false
end

reset()

lvim.builtin.which_key.mappings["-"] = { ":split<cr>", "splt w horz" }
lvim.builtin.which_key.mappings["_"] = { ":vsplit<cr>", "splt w vert" }

lvim.keys.visual_mode["<Space>y"] = '\"+y'
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.builtin.which_key.mappings["un"] = { ":lua require'telescope.builtin'.symbols{ sources = {'emoji', 'math' } }<CR>",
  "Unicode" }
lvim.builtin.which_key.mappings["da"] = { ":lua require('dapui').toggle()<CR>", "toggle dapui" }
lvim.builtin.which_key.mappings["bd"] = { "<cmd>BufferKill<CR>", "Kill" }
lvim.builtin.which_key.mappings["bp"] = { "<cmd>BufferLineCyclePrev<CR>", "Kill" }

lvim.builtin.which_key.vmappings["a"] = { function()
  local query = utils.copy_selection()
  projects.add_query(query)
end, "print visual selection" }

lvim.builtin.which_key.mappings["z"] = {
  name = "Zk",
  n = { "<cmd>ZkNew<cr>", "New" }
}
