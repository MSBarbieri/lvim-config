lvim.builtin.which_key.mappings["-"] = { ":split<cr>", "splt w horz" }
lvim.builtin.which_key.mappings["_"] = { ":vsplit<cr>", "splt w vert" }

lvim.keys.visual_mode["<Space>y"] = '\"+y'
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.builtin.which_key.mappings["un"] = { ":lua require'telescope.builtin'.symbols{ sources = {'emoji', 'math' } }<CR>",
  "Unicode" }
lvim.builtin.which_key.mappings["da"] = { ":lua require('dapui').toggle()<CR>", "toggle dapui" }
