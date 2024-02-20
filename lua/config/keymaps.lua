local function is_background_transparent()
	-- gets curent background color
	local normal_bg = vim.fn.synIDattr(vim.fn.hlID("Normal"), "bg")
	return normal_bg == "NONE" or normal_bg == ""
end

function BackgroundTransparancy()
	local colorscheme = vim.g.colors_name
	if colorscheme == "dracula" then
		if is_background_transparent() then
			-- small hack to get background color
			SwitchTheme()
			SwitchTheme()
		else
			vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
			vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")
			vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
		end
	end
end

local function save_preferences()
	local bg = vim.o.bg
	local colorscheme = vim.g.colors_name
	local home = vim.fn.expand("$USERPROFILE")
	vim.fn.writefile({ colorscheme, bg }, home .. "\\AppData\\Local\\nvim_preferences")
end

function ToggleBackground()
	local bg = vim.o.bg
	local colorscheme = vim.g.colors_name

	-- only apply light mode for gruvbox theme
	if colorscheme == "gruvbox" then
		vim.api.nvim_set_option("bg", bg == "dark" and "light" or "dark")
	end

	-- change background transparancy instead of accent
	if colorscheme == "dracula" then
		BackgroundTransparancy()
	end

	save_preferences()
end

function SwitchTheme()
	local theme = (vim.g.colors_name == "dracula") and "gruvbox" or "dracula"

	-- applies dark mode for dracula theme
	if theme == "dracula" then
		vim.api.nvim_set_option("bg", "dark")
	end

	-- changes lualine theme to match main theme
	vim.cmd("colorscheme " .. theme)
	require("lualine").setup({
		options = {
			theme = theme,
		},
	})

	save_preferences()
end

local function setupkeymaps()
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

	-- custom keymaps with lua functions
	vim.cmd("map <leader>bg [[:lua ToggleBackground()<cr>]]")
	vim.cmd("map <leader>ts [[:lua SwitchTheme()<cr>]]")
end

return {
	setup = setupkeymaps,
}
