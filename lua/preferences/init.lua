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

-- handles theme setup
local function load_preferences()
	local home = vim.fn.expand("$USERPROFILE")
	local filepath = home .. "\\AppData\\Local\\nvim_preferences"

	local preferences = {}

	if file_exists(filepath) then
		local lines, err = vim.fn.readfile(filepath)

		if err == nil and #lines == 2 then
			preferences = { theme = lines[1], background = lines[2] }
		end
	else
		preferences = { theme = "dracula", background = "dark" }
	end

	vim.api.nvim_set_option("bg", preferences.background)
	vim.cmd("colorscheme " .. preferences.theme)
	require("lualine").setup({
		options = {
			theme = preferences.theme,
		},
	})
end

return {
	setup = load_preferences,
}
