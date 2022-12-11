local colors = {
  g1 = '#848484',
  g2 = '#585858',
  g3 = '#262626',
  mainbar = '#121212',
}

local personal_theme = {
  normal = {
    a = { fg = colors.mainbar, bg = colors.g2 },
    b = { fg = colors.g1, bg = colors.g3 },
    c = { fg = colors.g1, bg = colors.mainbar },
  },

  insert = { a = { fg = colors.mainbar, bg = colors.g1 } },
  visual = { a = { fg = colors.mainbar, bg = colors.g1 } },
  replace = { a = { fg = colors.mainbar, bg = colors.g1 } },

  inactive = {
    a = { fg = colors.g1, bg = colors.mainbar },
    b = { fg = colors.g1, bg = colors.mainbar },
    c = { fg = colors.mainbar, bg = colors.mainbar },
  },
}
lvim.builtin.lualine.options.theme = personal_theme
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.active = true



lvim.colorscheme = "tokyonight"
-- colorscheme
require('tokyonight').setup({
  style = "night",
  styles = {
    floats = "transparent",
    sidebars = "transparent"
  },
  on_colors = function(clrs)
    clrs.comment = colors.g1 -- comments

    clrs.magenta = clrs.blue -- dashBoard Icon
    clrs.border_highlight = colors.g1 -- telescope and whichkey border

    clrs.bg_dark = colors.mainbar
    clrs.bg_popup = colors.mainbar

    clrs.bg_highlight = colors.g3 -- current line bar
    clrs.black = colors.g3 -- ColorColumn
    clrs.terminal_black = colors.g3

  end,
  use_background = false
})

lvim.builtin.breadcrumbs.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.alpha.mode = 'startify'
