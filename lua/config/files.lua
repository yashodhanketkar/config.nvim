--- @type table<string, function>
local filetype_settings = {
	cs = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.tabstop = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.expandtab = true
	end,
	bash = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.tabstop = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.expandtab = true
	end,
	slint = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.tabstop = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.expandtab = true
	end,
}

vim.filetype.add({
	extension = {
		tf = "terraform",
		sh = "bash",
		tsx = "typescriptreact",
		jsonc = "json",
	},
})

local group = vim.api.nvim_create_augroup("CustomFileTypes", { clear = true })
for filetype, fn in pairs(filetype_settings) do
	vim.api.nvim_create_autocmd("FileType", {
		group = group,
		pattern = filetype,
		callback = fn,
	})
end

-- handle prisma formatting
vim.api.nvim_create_autocmd("FileType", {
	pattern = "prisma",
	callback = function()
		vim.api.nvim_create_autocmd("BufWrite", {
			buffer = 0,
			callback = function()
				local file = vim.api.nvim_buf_get_name(0)
				vim.fn.jobstart({ "npx", "prisma", "format", "--schema", file }, {
					on_exit = function(_, exit_code)
						if exit_code == 0 then
							vim.cmd("checktime")
						end
					end,
				})
			end,
		})
	end,
})
