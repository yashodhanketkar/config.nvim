return {
	{
		"seblyng/roslyn.nvim",
		ft = { "cs" },
		build = "dotnet tool restore",
	},
	{
		"GustavEikaas/easy-dotnet.nvim",
		config = function()
			require("easy-dotnet").setup()
		end,
	},
}
