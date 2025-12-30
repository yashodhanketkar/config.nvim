local function setup_other()
	vim.o.foldcolumn = "1"
	vim.o.foldlevel = 99
	vim.o.foldlevelstart = 99
	vim.o.foldenable = true
end

local function setup_ui()
	vim.cmd("set expandtab")
	vim.cmd("set number relativenumber")
	vim.cmd("set tabstop=2")
	vim.cmd("set softtabstop=2")
	vim.cmd("set shiftwidth=2")
	vim.cmd("set smartindent")
	vim.cmd("set autoindent")
	vim.cmd("set mouse=a")

	setup_other()
end

return {
	setup = setup_ui,
}
