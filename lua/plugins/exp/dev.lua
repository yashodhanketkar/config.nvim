vim.pack.add({ { src = "https://github.com/nvim-mini/mini.test" } })
require("mini.test").setup()

local function setup_flash()
	local flash = require("flash")
	flash.setup({
		modes = {
			char = {
				enabled = false,
			},
		},
	})

  -- stylua: ignore start
  vim.keymap.set({ "n", "x", "o" }, "<leader>/", function () flash.jump() end, { desc="Flash search" })
	-- stylua: ignore end
end

local function setup_lazydev()
	require("lazydev").setup({
		library = {
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
		},
	})
end

vim.api.nvim_create_autocmd("BufRead", {
	once = true,
	callback = function()
		vim.pack.add({
			{ src = "https://github.com/milisims/nvim-luaref" },
			{ src = "https://github.com/folke/lua-dev.nvim" },
			{ src = "https://github.com/folke/lazydev.nvim" },
			{ src = "https://github.com/folke/flash.nvim" },
			{ src = "https://github.com/chentoast/marks.nvim" },
		})

		setup_flash()
		setup_lazydev()
	end,
})
