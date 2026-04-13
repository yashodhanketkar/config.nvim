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
}

vim.filetype.add({
	extension = {
		tf = "terraform",
		sh = "bash",
		tsx = "tsx",
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
