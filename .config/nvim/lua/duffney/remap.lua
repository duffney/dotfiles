vim.g.mapleader = " "

--vim.api.nvim_set_keymap('n', '<leader>e', ':Lexplore<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>c', ':noh<CR>', { noremap = true})

vim.api.nvim_set_keymap('n', '<leader>p', ':bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':bnext<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>W', { noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>w', { noremap = true})

vim.api.nvim_set_keymap('n', '<leader>fj', ':%!jq .<CR>', { noremap = true })
