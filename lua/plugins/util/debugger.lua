return {
	enabled = true,
	"mfussenegger/nvim-dap",
	dependencies = {
		"leoluz/nvim-dap-go",
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
		"nvim-neotest/nvim-nio",
		"williamboman/mason.nvim",
	},
	event = "VeryLazy",
	config = function()
		local dap, ui = require("dap"), require("dapui")
		local before = dap.listeners.before

		require("dapui").setup()
		require("dap-go").setup()
		require("nvim-dap-virtual-text").setup()

      -- stylua: ignore start
			vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, { desc = "Debugger toggle breakpoint" })
			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debugger toggle breakpoint" })
			vim.keymap.set("n", "<F10>", dap.run_to_cursor, { desc = "Debugger run to cursor" })
			vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debugger continue" })
			vim.keymap.set("n", "<F2>", dap.step_over, { desc = "Debugger step_over" })
			vim.keymap.set("n", "<F3>", dap.step_into, { desc = "Debugger step_into" })
			vim.keymap.set("n", "<F4>", dap.step_out, { desc = "Debugger step_out" })
			vim.keymap.set("n", "<leader><F2>", dap.restart, { desc = "Debugger restart" })
			vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "Debugger terminate" })
			-- Eval var under cursor
			vim.keymap.set("n", "<space>?", function() require("dapui").eval(nil, { enter = true }) end)
			before.attach.dapui_config = function() ui.open() end
			before.launch.dapui_config = function() ui.open() end
			before.event_terminated.dapui_config = function() ui.close() end
			before.event_exited.dapui_config = function() ui.close() end
		-- stylua: ignore end
	end,
}
