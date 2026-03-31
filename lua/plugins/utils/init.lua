local debugger = require("plugins.utils.debugger")
local folke = require("plugins.utils.folke")
local qol = require("plugins.utils.qol")

vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = function()
		vim.pack.add({
			{ src = "https://github.com/folke/which-key.nvim" },
			{ src = "https://github.com/folke/todo-comments.nvim" },
			{ src = "https://github.com/nvim-lua/plenary.nvim" },
			{ src = "https://github.com/folke/noice.nvim" },
			{ src = "https://github.com/MunifTanjim/nui.nvim" },
			{ src = "https://github.com/rcarriga/nvim-notify" },
			{ src = "https://github.com/folke/snacks.nvim" },
		})

		folke.setup_noice()
		folke.setup_snacks()
		folke.setup_todo()
	end,
})

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	once = true,
	callback = function()
		vim.pack.add({
			{ src = "https://github.com/windwp/nvim-autopairs" },
			{ src = "https://github.com/hrsh7th/nvim-cmp" },
			{ src = "https://github.com/windwp/nvim-ts-autotag" },
			{ src = "https://github.com/kevinhwang91/nvim-ufo" },
			{ src = "https://github.com/kevinhwang91/promise-async" },
			{ src = "https://github.com/tpope/vim-surround" },
			{ src = "https://github.com/tpope/vim-repeat" },
			{ src = "https://github.com/echasnovski/mini.ai", version = "stable" },
		})

		qol.setup_autos()
		qol.setup_folds()
		qol.setup_miniai()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	once = true,
	pattern = { "go" },
	callback = function()
		vim.pack.add({
			{ src = "https://github.com/mfussenegger/nvim-dap" },
			{ src = "https://github.com/leoluz/nvim-dap-go" },
			{ src = "https://github.com/rcarriga/nvim-dap-ui" },
			{ src = "https://github.com/theHamsta/nvim-dap-virtual-text" },
			{ src = "https://github.com/nvim-neotest/nvim-nio" },
			{ src = "https://github.com/williamboman/mason.nvim" },
		})

		debugger.setup_dap()
	end,
})
