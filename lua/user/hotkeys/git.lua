lvim.builtin.which_key.mappings["gt"] = {
  ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  "Worktree list"
}
lvim.builtin.which_key.mappings["ga"] = {
  ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
  "Worktree add"
}
lvim.lsp.buffer_mappings["normal_mode"]["ga"] = {
  "<cmd>lua require('goto-preview').goto_preview_definition()<cr>",
  "Peek definition"
}

lvim.lsp.buffer_mappings["normal_mode"]["ge"] = {
  "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>",
  "Peek implementation"
}
