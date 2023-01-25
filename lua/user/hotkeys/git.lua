lvim.builtin.which_key.mappings["gt"] = {
  ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  "Worktree list"
}
lvim.builtin.which_key.mappings["ga"] = {
  ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
  "Worktree add"
}
