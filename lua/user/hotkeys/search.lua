local search = function()
  return {
    name = "Find",
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
    a = { require("lvim.core.telescope.custom-finders").find_project_files, "Find File" },
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    z = { "<cmd>ZkNotes<cr>", "Zk Notes" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    e = { "<cmd>Telescope live_grep<cr>", "Text" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    p = {
      "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
      "Colorscheme with Preview",
    },
  }
end

lvim.builtin.which_key.mappings["F"] = { "<cmd>lua require('spectre').open()<CR>", "Spectre" }
lvim.builtin.which_key.vmappings["f"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Spectre" }
lvim.builtin.which_key.vmappings["F"] = { "<esc>:lua require('spectre').open_visual()<CR>", "Spectre" }

return search
