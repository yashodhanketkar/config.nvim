local M = {}

local themes = {
	"dracula",
	"gruvbox",
	"kanagawa",
}

-- handle file check
local function file_exists(filepath)
	local f = io.open(filepath, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

local function is_background_transparent()
	-- gets curent background color
	local normal_bg = vim.fn.synIDattr(vim.fn.hlID("Normal"), "bg")
	return normal_bg == "NONE" or normal_bg == ""
end

local function set_transparancy()
	vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
	vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")
	vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
	vim.cmd("hi NeotreeNormal guibg=NONE ctermbg=NONE")
	vim.cmd("hi NeotreeNormalNC guibg=NONE ctermbg=NONE")
end

local function background_transparancy()
	local colorscheme = vim.g.colors_name
	if colorscheme == "dracula" then
		if is_background_transparent() then
			-- force theme and background color
			vim.cmd("colorscheme " .. colorscheme)
			vim.api.nvim_set_option_value("bg", "dark", {})
		else
			set_transparancy()
		end
	end
end

local function save_preferences()
	local bg = vim.o.bg
	local colorscheme = vim.g.colors_name
	local filePath = ""

	if vim.fn.has("win32") == 1 then
		local home = vim.fn.expand("$USERPROFILE")
		filePath = home .. "\\AppData\\Local\\nvim_preferences"
	elseif vim.fn.has("linux") == 1 then
		local home = os.getenv("HOME")
		filePath = home .. "/.nvim_preferences"
	end

	if not file_exists(filePath) then
		os.execute("touch " .. filePath)
	end

	vim.fn.writefile({ colorscheme, bg }, filePath)
end

function M.toggle_background()
	local bg = vim.o.bg
	local colorscheme = vim.g.colors_name

	-- apply light mode for themes except dracula
	if colorscheme ~= "dracula" then
		vim.api.nvim_set_option_value("bg", bg == "dark" and "light" or "dark", {})
	else
		background_transparancy()
	end

	save_preferences()
end

function M.switch_theme()
	local current_theme = vim.g.colors_name
	local next_index = 1

	for i, theme in ipairs(themes) do
		if theme == current_theme then
			next_index = (i % #themes) + 1
			break
		end
	end

	local next_theme = themes[next_index]
	vim.cmd("colorscheme " .. next_theme)

	-- applies dark mode for dracula theme
	if next_theme == "dracula" then
		vim.api.nvim_set_option_value("bg", "dark", {})
	end

	-- changes lualine theme to match main theme
	require("lualine").setup({
		options = {
			theme = next_theme,
		},
	})

	save_preferences()
end

return {
	setup = M,
}
