local helper = require("themes.helper")
local M = {}

function M.select_theme_ui()
	local Popup = require("nui.popup")
	local event = require("nui.utils.autocmd").event

	local popup = Popup({
		enter = true,
		focusable = true,
		border = {
			style = "rounded",
			text = {
				top = " Select Theme ",
				top_align = "right",
			},
		},
		position = "50%",
		size = {
			width = "50%",
			height = #helper.themes,
		},
	})

	popup:mount()

	local function handle_input(index)
		if helper.themes[index] then
			helper.apply_theme(helper.themes[index])
			popup:unmount()
		end
	end

	-- Display themes as menu items
	for i, theme in ipairs(helper.themes) do
		vim.api.nvim_buf_set_lines(popup.bufnr, i - 1, i, false, { i .. ". " .. theme })
	end

	-- Key handling
	popup:map("n", "<CR>", function()
		local row = vim.api.nvim_win_get_cursor(0)[1]
		handle_input(row)
	end, { noremap = true })
	popup:on(event.BufLeave, function()
		popup:unmount()
	end)
end

return M
