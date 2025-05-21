return {
	{ "christoomey/vim-tmux-navigator", event = "VeryLazy" },
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()
    -- stylua: ignore start
		local function map(lhs, rhs, desc, opts) vim.keymap.set("n", lhs, rhs, opts or { desc = desc }) end
		map("<leader>ha", function() harpoon:list():add() end, "Add file to harpoon list")
		map("<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Open harpoon list UI")
		map("<leader>h1", function() harpoon:list():select(1) end, "Open item 1 from harpoon file/s list")
		map("<leader>h2", function() harpoon:list():select(2) end, "Open item 2 from harpoon file/s list")
		map("<leader>h3", function() harpoon:list():select(3) end, "Open item 3 from harpoon file/s list")
		map("<leader>h4", function() harpoon:list():select(4) end, "Open item 4 from harpoon file/s list")
			-- stylua: ignore end
		end,
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
			{ "<leader>fr", "<cmd>FzfLua resume<cr>", desc = "Resumes previous operation" },
			{ "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
			{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
			{ "<leader>fh", "<cmd>FzfLua helptags<cr>", desc = "Show help tags" },
			{ "<leader>fd", "<cmd>FzfLua lsp_workspace_diagnostics<cr>", desc = "Show lsp diagnostics" },
			{ "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Show lsp symbols" },
			{ "<leader>fc", ":FzfLua ", desc = "Start FzfLua command line" },
		},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		event = "VeryLazy",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		init = function()
			require("neo-tree").setup({
        -- auto close
        -- stylua: ignore 
				event_handlers = {{
          event = "file_opened",
          handler = function(_) require("neo-tree.command").execute({ action = "close" }) end,
        }},
				window = { position = "left" },
			})
		end,
		keys = {
			{ "<C-n>", "<cmd>Neotree filesystem reveal left<cr>", desc = "Open Neotree on left" },
			{ "<leader>bf", "<cmd>Neotree buffers reveal float<cr>", desc = "Shows Neotree buffers" },
		},
	},
}
