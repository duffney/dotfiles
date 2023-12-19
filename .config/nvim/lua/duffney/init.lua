require("duffney.set")
require("duffney.remap")
require("duffney.lazy")

--vim.g.netrw_browse_split = 0
--vim.g.netrw_banner = 0
--vim.g.netrw_winsize = 15

-- vim.cmd("colorscheme carbonfox")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local toggle_relative_number_group = augroup('toggle_relative_number', {})

autocmd('InsertEnter', {
	group = toggle_relative_number_group,
	pattern = "*",
	command = ':setlocal norelativenumber',
})

autocmd('InsertLeave', {
	group = toggle_relative_number_group,
	pattern = "*",
	command = ':setlocal relativenumber',
})

-- vim.cmd[[
--   augroup toggle_relative_number
--     autocmd!
--     autocmd InsertEnter * :setlocal norelativenumber
--     autocmd InsertLeave * :setlocal relativenumber
--   augroup END
-- ]]
