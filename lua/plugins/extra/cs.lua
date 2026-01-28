return {
	{
		"seblyng/roslyn.nvim",
		ft = { "cs" },
		build = "dotnet tool restore",
	},
	{
		"GustavEikaas/easy-dotnet.nvim",
		ft = { "cs" },
		config = function()
			require("easy-dotnet").setup()
		end,
	},
}
