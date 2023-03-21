lvim.builtin.lualine.options.theme = "tokyonight"
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.active = true

lvim.colorscheme = "tokyonight-night"
-- colorscheme
require('tokyonight').setup({
  style = "night",
  transparent = true,
  styles = {
    floats = "transparent",
    sidebars = "transparent"
  },
  use_background = false
})

lvim.builtin.breadcrumbs.active = true
lvim.builtin.bufferline.active = false
lvim.builtin.alpha.mode = 'startify'
