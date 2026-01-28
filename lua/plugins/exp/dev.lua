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
	{
		"folke/flash.nvim",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			modes = {
				char = {
					enabled = false,
				},
			},
		},
		keys = {
      -- stylua: ignore start
      { "<leader>/", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash search" },
			-- stylua: ignore end
		},
	},
	{
		"chentoast/marks.nvim",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},
}
