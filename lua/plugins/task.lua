local M = {}
function M.setup(_)
  local plugins = {
    {
      "epwalsh/obsidian.nvim",
      dependencies = {
        'junegunn/fzf',
        'nvim-telescope/telescope.nvim',
        'preservim/vim-markdown',
      },
      config = function()
        require('obsidian').setup({
          dir = "~/Dropbox/obsidian",
          notes_subdir = "notes",
          daily_notes = {
            folder = "notes/dailies",
          },
          use_advanced_uri = true,
        })
      end
    },
    -- { "tools-life/taskwiki", dependencies = {
    { 'majutsushi/tagbar' },
    { 'powerman/vim-plugin-AnsiEsc' },
    -- {
    --   'vimwiki/vimwiki', branch = 'dev',
    --   dependencies = {
    --     'majutsushi/tagbar',
    --     'powerman/vim-plugin-AnsiEsc',
    --   },
    --   config = function()
    --     vim.cmd [[
    --   let g:vimwiki_key_mappings = { 'all_maps': 0, }

    --   let tech_wiki = {}
    --   let tech_wiki.path = '~/dev/repos/MSBarbieri/wiki/'
    --   let tech_wiki.path_html = '~/dev/repos/MSBarbieri/wiki/html'
    --   let tech_wiki.index = 'README'

    --   let obsidian = {}
    --   let obsidian.path = '~/Dropbox/obsidian/notes/'

    --   let g:vimwiki_list = [tech_wiki, obsidian]
    --   ]]
    --   end
    -- },
  }

  for _, p in pairs(plugins) do
    table.insert(lvim.plugins, p)
  end
end

return M
