local M = {}
function M.setup(_)
  local plugins = {
    { "epwalsh/obsidian.nvim", requires = {
      'junegunn/fzf',
      'nvim-telescope/telescope.nvim',
      'preservim/vim-markdown',
    }, config = function()
      require('obsidian').setup({
        dir = "~/Dropbox/obsidian",
        notes_subdir = "notes",
        daily_notes = {
          folder = "notes/dailies",
        },
        use_advanced_uri = true,
      })
    end }
  }

  for _, p in pairs(plugins) do
    table.insert(lvim.plugins, p)
  end
end

return M
