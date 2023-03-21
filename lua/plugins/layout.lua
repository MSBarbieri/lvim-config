local M = {}
function M.setup(_)
  local plugins = {
    -- { "shaunsingh/nord.nvim" },
    -- { "jacoborus/tender.vim" },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require 'colorizer'.setup()
      end
    },
    {
      "folke/lsp-colors.nvim",
      config = function()
        require("lsp-colors").setup({
          Error = "#db4b4b",
          Warning = "#e0af68",
          Information = "#0db9d7",
          Hint = "#10B981"
        })
      end
    },
    { "danilamihailov/beacon.nvim" },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    { "nvim-treesitter/nvim-treesitter-context" },
    {
      "beauwilliams/focus.nvim",
      config =
          function()
            require("focus").setup({
              signcolumn = false,
              autoresize = false,
              cursorline = true,
            })
          end
    },
    { 'nvim-telescope/telescope-symbols.nvim' },
    {
      'nacro90/numb.nvim',
      config = function()
        require('numb').setup()
      end
    },
    {
      "folke/todo-comments.nvim",
      dependencies = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup()
      end
    },
    {
      'simrat39/symbols-outline.nvim',
      config = function()
        require('symbols-outline').setup()
      end
    },
    {
      'haringsrob/nvim_context_vt',
      config = function()
        require('nvim_context_vt').setup()
      end
    },
    {
      "luukvbaal/stabilize.nvim",
      config = function() require("stabilize").setup() end
    },
    { 'chrisbra/unicode.vim' },
    { 'RishabhRD/popfix' },
    { "ThePrimeagen/git-worktree.nvim" },
    {
      'jghauser/fold-cycle.nvim',
      config = function()
        require('fold-cycle').setup({
          open_if_max_closed = true,  -- closing a fully closed fold will open it
          close_if_max_opened = true, -- opening a fully open fold will close it
        })
      end
    },
    {
      'krivahtoo/silicon.nvim',
      build = './install.sh',
      config = function()
        require('silicon').setup({
          font = 'FiraCode Nerd Font=16',
          theme = 'tokyonight',
        })
      end
    }
  }

  for _, p in pairs(plugins) do
    table.insert(lvim.plugins, p)
  end
end

return M
