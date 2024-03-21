local function setupui()
	vim.cmd("set expandtab")
	vim.cmd("set number relativenumber")
	vim.cmd("set tabstop=2")
	vim.cmd("set softtabstop=2")
	vim.cmd("set shiftwidth=2")
	vim.cmd("set smartindent")
	vim.cmd("set autoindent")
	vim.cmd("set mouse=a")
end

return {
	setup = setupui,
}
