lvim.builtin.which_key.vmappings["l"] = {
  "<cmd>ObsidianLinkNew<cr>",
  "print visual selection"
}
lvim.builtin.which_key.mappings['o'] = {
  name = 'obsidian',
  n = { '<cmd>ObsidianNew<cr>', 'new note' },
  f = { '<cmd>ObsidianSearch<cr>', 'search' },
  t = { '<cmd>ObsidianToday<cr>', 'Today' },
}
lvim.keys.normal_mode['go'] = '<cmd>ObsidianFollowLink<cr>'
