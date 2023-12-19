local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"christoomey/vim-tmux-navigator"},
    {"EdenEast/nightfox.nvim"},
    {'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		lazy = true,
		config = false,
	},
	-- LSP Support
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
		}
	},
	-- Autocompletion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{
				'L3MON4D3/LuaSnip',
				version = "v2.*",
				build = "make install_jsregexp",
			}
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			{"nvim-tree/nvim-web-devicons"},
		},
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			{"nvim-tree/nvim-web-devicons"},
		},
	},
})
