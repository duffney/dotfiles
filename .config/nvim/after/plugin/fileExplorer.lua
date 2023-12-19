require("nvim-tree").setup({
  update_cwd = true,
  update_focused_file = {
	  enable = true,
	  update_cwd = true,
	  ignore_list = {}
  },
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 25,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
