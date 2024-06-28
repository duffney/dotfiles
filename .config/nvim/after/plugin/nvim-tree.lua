require("nvim-tree").setup({
  --renderer = {
   -- icons = {
    --  show = {
     --   file = false,
      --  folder = false,
      --  folder_arrow = false,
      --  git = false,
     -- }
   -- },
   -- group_empty = true,
 -- },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  filters = {
    dotfiles = true,
  },
})

