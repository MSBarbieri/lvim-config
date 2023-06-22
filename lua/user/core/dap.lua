local M = {}

function M.node_setup()
  -- require("dap-vscode-js").setup({
  --   adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
  -- })

  for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
    require("dap").configurations[language] = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
      {
        type = "pwa-node",
        request = "attach",
        name = "Attach",
        processId = require 'dap.utils'.pick_process,
        cwd = "${workspaceFolder}",
      }, {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Tests",
      -- trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/jest/bin/jest.js",
        "--runInBand",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    }, {
      type = "pwa-node",
      request = "launch",
      name = "Debug Mocha Tests",
      -- trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/mocha/bin/mocha.js",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    }
    }
  end
end

function M.setup()
  local dap = require('dap')
  dap.configurations.python = {
    {
      type = 'python',
      request = 'launch',
      name = "Launch file",
      program = "${file}",
      pythonPath = function()
        return os.getenv("HOME") .. '/.pyenv/shims/python3'
      end
    },
  }
  dap.configurations.cpp = { {
    type = 'codelldb',
    request = 'launch',
    name = "Rust Debug",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  } }

  dap.configurations.c = dap.configurations.cpp
  dap.configurations.rust = dap.configurations.cpp
  dap.adapters.python = {
    type = 'executable',
    command = os.getenv("HOME") .. '/.pyenv/shims/python3',
    args = { '-m', 'debugpy.adapter' },
  }

  dap.adapters.codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
      -- CHANGE THIS to your path!
      command = os.getenv("HOME") .. '/.local/share/nvim/mason/bin/codelldb',
      args = { "--port", "${port}" },
    }
  }
  dap.adapters.node2 = {
    type = 'executable',
    command = os.getenv("HOME") .. '/.local/share/nvim/mason/bin/node-debug2-adapter',
  }

  dap.configurations.javascript = {
    {
      name = 'Launch',
      type = 'node2',
      request = 'launch',
      program = '${file}',
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = 'inspector',
      console = 'integratedTerminal',
    },
    {
      -- with the `--inspect` flag.
      name = 'Attach to process',
      type = 'node2',
      request = 'attach',
      processId = require'dap.utils'.pick_process,
    },
  }

  -- M.node_setup()

  local dapui = require("dapui")
  dapui.setup()
  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end
end

return M
