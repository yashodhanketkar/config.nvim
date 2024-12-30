return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()
    -- stylua: ignore start
		local function map(lhs, rhs, desc, opts) vim.keymap.set("n", lhs, rhs, opts or { desc = desc }) end
		map("<leader>ha", function() harpoon:list():add() end, "Add file to harpoon list")
		map("<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Open harpoon list UI")
		map("<leader>h1", function() harpoon:list():select(1) end, "Open item 1 from harpoon file/s list")
		map("<leader>h2", function() harpoon:list():select(2) end, "Open item 2 from harpoon file/s list")
		map("<leader>h3", function() harpoon:list():select(3) end, "Open item 3 from harpoon file/s list")
		map("<leader>h4", function() harpoon:list():select(4) end, "Open item 4 from harpoon file/s list")
		-- stylua: ignore end
	end,
}
