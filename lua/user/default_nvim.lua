vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.updatetime = 0

vim.opt.smartindent = true
vim.opt.timeoutlen = 0

vim.opt.undodir = os.getenv("HOME") .. "/.local/share/lvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.showtabline = 0

vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.opt.foldlevelstart = 99
vim.opt.foldlevel = 0
vim.opt.foldmethod = 'indent'
vim.o.foldcolumn = '1'
