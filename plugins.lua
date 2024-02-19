local plugins = {
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "VeryLazy",
		opts = function()
			return require "custom.configs.null-ls"
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "plugins.configs.lspconfig"
			require "custom.configs.lspconfig"
		end,
	},
	-- disable luasnip as we are using ultisnip instead
	{
		"L3MON4D3/LuaSnip",
		enabled = false,
	},
	{
		"rafamadriz/friendly-snippets",
		enabled = false,
	},
}
return plugins