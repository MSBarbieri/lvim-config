-- generic LSP settings
-- Additional Plugins
local M = {}

function M.setup(_)
  lvim.plugins = {
    { "shaunsingh/nord.nvim" },
    { "jacoborus/tender.vim" },

    { "norcalli/nvim-colorizer.lua", config = function()
      require 'colorizer'.setup()
    end },
    { "folke/lsp-colors.nvim", config = function()
      require("lsp-colors").setup({
        Error = "#db4b4b",
        Warning = "#e0af68",
        Information = "#0db9d7",
        Hint = "#10B981"
      })
    end },
    { "danilamihailov/beacon.nvim" },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    { "nvim-treesitter/nvim-treesitter-context" },
    { "RishabhRD/nvim-cheat.sh" },
    { "ThePrimeagen/git-worktree.nvim" },
    { "ThePrimeagen/harpoon" },
    { "beauwilliams/focus.nvim", config =
    function()
      require("focus").setup()
    end
    },
    { 'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" } },
    { 'chrisbra/unicode.vim' },
    { 'nvim-telescope/telescope-symbols.nvim' },
    { 'RishabhRD/popfix' },
    {
      'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end
    },
    { '~/dev/repos/MSBarbieri/nvim-db' },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("hop").setup()
        vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
        vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
      end,
    },
    { "windwp/nvim-spectre", config = function()
      require("spectre").setup({
        mapping = {
          ['send_to_qf'] = {
            map = "<leader>e",
            cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
            desc = "send all item to quickfix"
          },
        }
      })
    end },
    { 'junegunn/fzf', run = function()
      vim.fn['fzf#install']()
    end
    },
    { 'kevinhwang91/nvim-bqf' },
    { 'nacro90/numb.nvim', config = function()
      require('numb').setup()
    end },
    {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup()
      end
    },
    { 'simrat39/symbols-outline.nvim', config = function()
      require('symbols-outline').setup()
    end },
    { 'metakirby5/codi.vim' },
    { "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
        require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
        })
      end },
    { "luukvbaal/stabilize.nvim",
      config = function() require("stabilize").setup() end
    },
    {
      '~/dev/repos/MSBarbieri/projections.nvim',
      config = function()
        require("projections").setup({
          workspaces = {
            "~/dev/repos",
            "~/dev/repos/MSBarbieri",
            "~/.config",
          },
          patterns = { ".git" },
          ignore_patterns = { '.zk' }, -- patterns that make the project ignored
        })

        require('telescope').load_extension('projections')
        -- Autostore session on VimExit
        local Session = require("projections.session")
        vim.api.nvim_create_autocmd({ 'VimLeavePre' }, {
          callback = function() Session.store(vim.loop.cwd()) end,
        })

        vim.opt.sessionoptions:append("localoptions") -- Save localoptions to session file
      end
    },
    {
      'pwntester/octo.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'kyazdani42/nvim-web-devicons',
      },
      config = function()
        require "octo".setup()
      end
    },
    { 'mickael-menu/zk-nvim',
      config =
      function()
        require('zk').setup({
          picker = "telescope"
        })
      end
    },
    { 'leoluz/nvim-dap-go', config = function()
      require('dap-go').setup()
    end },
    { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } },
    {
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npm run compile"
    },
    { 'haringsrob/nvim_context_vt', config = function()
      require('nvim_context_vt').setup()
    end }
  }
  require('plugins.test').setup(_)
end

return M
