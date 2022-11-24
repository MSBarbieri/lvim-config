require('harpoon').setup({
  menu = {
    width = vim.api.nvim_win_get_width(0) - 4,
    height = 8
  }
})
lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "harpoon")
end
