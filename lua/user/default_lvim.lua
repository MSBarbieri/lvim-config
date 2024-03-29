lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.lsp.installer.automatic_installation = true
lvim.builtin.dap.active = true
lvim.leader = "space"

lvim.transparent_window = true -- transparency in tokyonight
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.nvimtree.setup.view.side = "left"

lvim.builtin.gitsigns.opts.numhl = true
lvim.builtin.gitsigns.opts.current_line_blame = true

vim.wo.colorcolumn = "80,100"
lvim.builtin.autopairs.active = true
lvim.builtin.project.active = true
lvim.builtin.cmp.active = true
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
