local set = vim.keymap.set

vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2" },
	{ src = "https://github.com/ibhagwan/fzf-lua" },
})

require("oil").setup({
	default_file_explorer = true,
	view_options = { show_hidden = true },
})

  -- stylua: ignore start
	vim.keymap.set("n", "-",
    "<cmd>Oil<CR>",
    { desc = "Open parent directory", noremap = true, silent = true })
-- stylua: ignore end

local harpoon = require("harpoon")
harpoon.setup()

  -- stylua: ignore start
	set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add file to harpoon list" })
	set("n", "<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open harpoon list UI" })
  set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Open item 1 from harpoon list"})
  set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Open item 2 from harpoon list"})
  set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Open item 3 from harpoon list"})
  set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Open item 4 from harpoon list"})
-- stylua: ignore end

require("fzf-lua").setup({
	winopts = { prview = { layout = "horizontal" } },
})

	-- stylua: ignore start
	vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find Files" })
  vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua resume<CR>", { desc = "Resumes previous operation" })
  vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "Live Grep" })
  vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Buffers" })
  vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<CR>", { desc = "Show help tags" })
  vim.keymap.set("n", "<leader>fd", "<cmd>FzfLua lsp_workspace_diagnostics<CR>", { desc = "Show lsp diagnostics" })
  vim.keymap.set("n", "<leader>fs", "<cmd>FzfLua lsp_document_symbols<CR>", { desc = "Show lsp symbols" })
  vim.keymap.set("n", "<leader>fc", ":FzfLua ", { desc = "Start FzfLua command line" })
-- stylua: ignore end

local function setup_neotree()
	require("neo-tree").setup({
    -- auto close
    -- stylua: ignore 
    event_handlers = {{
      event = "file_opened",
      handler = function(_) require("neo-tree.command").execute({ action = "close" }) end,
    }},
		window = { position = "left" },
	})

	vim.keymap.set("n", "<C-n>", "<cmd>Neotree filesystem reveal left<cr>", { desc = "Open Neotree on left" })
	vim.keymap.set("n", "<leader>bf", "<cmd>Neotree buffers reveal float<cr>", { desc = "Shows Neotree buffers" })
end

vim.api.nvim_create_autocmd("BufRead", {
	once = true,
	callback = function()
		vim.pack.add({ { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" } })
		setup_neotree()
	end,
})
