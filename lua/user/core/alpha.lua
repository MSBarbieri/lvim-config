local M = {}

function M.setup()

  local startify = require('alpha.themes.startify')
  local function inputs()

    local output = {
      type = 'group',
      val = {
        { type = "padding", val = 1 },
        { type = "text", val = "Code Links", opts = { hl = "SpecialComment", shrink_margin = false } },
        { type = "padding", val = 1 },
        startify.button("i", "restore this project",
          '<cmd>lua require("projections.switcher").switch(vim.loop.cwd())<cr>'),
        startify.button("a", "Last Project",
          ":lua local s = require('projections.session'); if s.info(vim.loop.cwd()) == nil then s.restore_latest() else s.restore(vim.loop.cwd()) end <cr>"),
        startify.button('p', "Projects", "<cmd>Telescope projections<cr>"),
        startify.button("f", "Find File", "<cmd>Telescope find_files<cr>"),
        startify.button("c", "Config", "<CMD>edit ~/.config/lvim/config.lua <CR>"),
        startify.button("o", "NixOS config", "<cmd>edit ~/.config/nixos/<cr>"),
        -- startify.button("u", "awesome config", "<cmd>edit ~/.config/awesome/rc.lua<cr>"),

        { type = "padding", val = 1 },
        { type = "text", val = "Links", opts = { hl = "SpecialComment", shrink_margin = false } },
        { type = "padding", val = 1 },
        startify.button("e", "New File", "<CMD>ene!<CR>"),
        startify.button("n", "Obsidian Note", "<cmd>ObsidianNew<cr>"),
        startify.button("w", "Wiki", "<cmd>VimwikiIndex<cr>"),
      }

    }
    return output
  end

  local config = startify.config
  config.layout[4] = inputs()
  table.remove(config.layout, 6)
  lvim.builtin.alpha.startify.config = config
end

return M
