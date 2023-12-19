vim.opt.guicursor = ""

vim.opt.nu = true
--vim.opt.relativenumber = true

vim.opt.wrap = false
--vim.opt.guifont = { "Ubuntu Mono Nerd Font", "h12" }

vim.opt.swapfile = false
vim.opt.backup = false

-- disable netrw in favor of nvim-tree 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
