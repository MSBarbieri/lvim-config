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
    end },

    { "tools-life/taskwiki", requires = {
      { 'vimwiki/vimwiki', branch = 'dev' },
      'majutsushi/tagbar',
      'blindFS/vim-taskwarrior',
      'powerman/vim-plugin-AnsiEsc',
    }, config = function()
      vim.cmd [[
      let g:vimwiki_key_mappings = { 'all_maps': 0, }

      let wiki_notes = {}
      let wiki_notes.path = '~/obsidian/'
      let wiki_notes.ext = '.md'

      let tech_wiki = {}
      let tech_wiki.path = '~/dev/repos/MSBarbieri/wiki/'
      let tech_wiki.path_html = '~/dev/repos/MSBarbieri/wiki/html'
      let tech_wiki.ext = '.md'
      let tech_wiki.index = 'README'

      let g:vimwiki_list = [tech_wiki,wiki_notes]
      ]]
    end
    }
  }

  for _, p in pairs(plugins) do
    table.insert(lvim.plugins, p)
  end
end

return M
