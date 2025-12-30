return {
	{
		"milisims/nvim-luaref",
		event = "VeryLazy",
	},
	{
		"folke/lua-dev.nvim",
		event = "VeryLazy",
	},
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	{
		"nvim-mini/mini.test",
		version = "*",
		config = function()
			require("mini.test").setup()
		end,
	},
}
