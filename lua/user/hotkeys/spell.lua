lvim.builtin.which_key.mappings['s'] = {
  name = 'spelling',
  p = { '<cmd>set spelllang=pt_br<cr>', 'set spell Portuguese' },
  e = { '<cmd>set spelllang=en<cr>', 'set spell English' },
  l = { function()
    vim.api.nvim_command(':exe "normal" "]s"')
  end, 'next misspelled word' },
  h = { function()
    vim.api.nvim_command(':exe "normal" "[s"')
  end, 'prev misspelled word' },
  g = { function()
    vim.api.nvim_command(':exe "normal" "zg"')
  end, 'add to good word list' },
  b = { function()
    vim.api.nvim_command(':exe "normal" "zb"')
  end, 'add to wrong word list' },
  a = { function()
    vim.api.nvim_command(':exe "normal" "z="')
  end, 'list solutions' },
}
