local themes = require("themes")

local function setup_keymaps()
	-- custom keymaps
	vim.cmd("map <leader>w :w<cr>")
	vim.cmd("map <leader>q :wq<cr>")
	vim.cmd("map <leader>Q :q!<cr>")
	vim.cmd("map <leader>v <c-w>v")
	vim.cmd("map <leader>s <c-w>s")
	vim.cmd("map <c-j> <c-w>j")
	vim.cmd("map <c-k> <c-w>k")
	vim.cmd("map <c-h> <c-w>h")
	vim.cmd("map <c-l> <c-w>l")
	vim.cmd("map <leader>G :Git ")
	vim.cmd("map <leader><leader>n :noh<cr>")

	-- custom keymaps with lua functions
	vim.keymap.set("n", "<leader>bg", themes.toggle_background, { desc = "Toggle background" })
	vim.keymap.set("n", "<leader>ts", themes.switch_theme, { desc = "Toggle colorscheme" })
	vim.keymap.set("n", "<leader>th", themes.theme_selector, { desc = "Select colorscheme" })
end

return {
	setup = setup_keymaps,
}
