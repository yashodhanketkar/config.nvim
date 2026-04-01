local M = {}

--- Oil file explorer configuration (primary file explorer)
function M.setup_oil()
	require("oil").setup({
		default_file_explorer = true,
		view_options = { show_hidden = true },
	})

	vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory", noremap = true, silent = true })
end

--- Harpoon shortcuts configuration
function M.setup_harpoon()
	local harpoon = require("harpoon")
	harpoon.setup()

	--- @param lhs string
	--- @param rhs function
	--- @param desc string
	local function map(lhs, rhs, desc)
		vim.keymap.set("n", "<leader>h" .. lhs, rhs, { desc = desc })
	end

	-- stylua: ignore start
	map("a", function() harpoon:list():add() end, "Add file")
	map("m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Harpoon list (UI)")
  for i = 1, 4 do map(tostring(i), function() harpoon:list():select(i) end, "Select " .. i) end
	-- stylua: ignore end
end

--- Fuzzy finder configuration
function M.setup_fzf()
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
end

--- Neotree file explorer configuration (secondary file explorer)
function M.setup_neotree()
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

--- Flash search configuration
function M.setup_flash()
	local flash = require("flash")
	flash.setup({ modes = { char = { enabled = false } } })

  -- stylua: ignore start
	vim.keymap.set({ "n", "x", "o" }, "<leader>/", function() flash.jump() end, { desc = "Flash search" })
	-- stylua: ignore end
end

function M.setup_marks()
	require("marks").setup({
		excluded_filetypes = { "dashboard", "neo-tree", "noice", "oil", "startuptime", "toggleterm" },
		excluded_buftypes = { "terminal", "quickfix", "prompt" },
	})
end

return M
