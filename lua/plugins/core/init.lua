local git = require("plugins.core.git")
local coding = require("plugins.core.coding")
local navigation = require("plugins.core.navigation")
local ui = require("plugins.core.ui")

vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2" },
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/folke/noice.nvim" },
	{ src = "https://github.com/chentoast/marks.nvim" },
})

-- Navigation
navigation.setup_oil()
navigation.setup_harpoon()
navigation.setup_fzf()

-- UI
ui.setup_lualine()

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	once = true,
	callback = function()
		vim.pack.add({
			-- coding
			{ src = "https://github.com/rafamadriz/friendly-snippets" },
			{ src = "https://github.com/saghen/blink.cmp", version = "v1" },
			{ src = "https://github.com/supermaven-inc/supermaven-nvim" },
			{ src = "https://github.com/stevearc/conform.nvim" },
			-- git
			{ src = "https://github.com/tpope/vim-fugitive" },
			{ src = "https://github.com/lewis6991/gitsigns.nvim" },
			{ src = "https://github.com/sindrets/diffview.nvim" },
			-- navigation
			{ src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
			{ src = "https://github.com/folke/flash.nvim" },
		})

		-- coding
		coding.setup_blink()
		coding.setup_supermaven()
		coding.setup_conform()

		-- git
		git.setup_fugitive()
		git.setup_gitsings()
		git.setup_diffview()

		-- navigation lazy loaded
		navigation.setup_neotree()
		navigation.setup_flash()
		navigation.setup_marks()
	end,
})
