local M = {}

--- Dap configuration
--- Currently only supports go
function M.setup_dap()
	local dap, ui = require("dap"), require("dapui")
	local before = dap.listeners.before

	require("dapui").setup()
	require("dap-go").setup()
	require("nvim-dap-virtual-text").setup()

    -- stylua: ignore start
		local function map(lhs, rhs, desc) vim.keymap.set("n", lhs, rhs, { desc = desc, buffer = true }) end

		map("<F9>", dap.toggle_breakpoint, "Debugger toggle breakpoint")
		map("<leader>db", dap.toggle_breakpoint, "Debugger toggle breakpoint")
		map("<F10>", dap.run_to_cursor, "Debugger run to cursor")
		map("<F5>", dap.continue, "Debugger continue")
		map("<F2>", dap.step_over, "Debugger step_over")
		map("<F3>", dap.step_into, "Debugger step_into")
		map("<F4>", dap.step_out, "Debugger step_out")
		map("<leader><F2>", dap.restart, "Debugger restart")
		map("<leader>dq", dap.terminate, "Debugger terminate")
		map("<space>?", function() require("dapui").eval(nil, { enter = true }) end, "Eval var under cursor")

		before.attach.dapui_config = function() ui.open() end
		before.launch.dapui_config = function() ui.open() end
		before.event_terminated.dapui_config = function() ui.close() end
		before.event_exited.dapui_config = function() ui.close() end
	-- stylua: ignore end
end

return M
